require 'spec_helper'

describe Chatwork::Task do
  it 'can list tasks according to chatroom' do
    params = {params: {room_id: ENV['CHATWORK_MYCHAT_ID']}}
    tasks = Chatwork::Task.all(params)
    expect(tasks.all? {|f| f.is_a? Chatwork::Task}).to be true
  end

  it 'can retrieve task from chatroom' do
    params = {params: {room_id: ENV['CHATWORK_MYCHAT_ID']}}
    task = Chatwork::Task.find(Chatwork::Task.first(params).id, params)
    expect(task).to be_instance_of Chatwork::Task
  end

  it 'can create task to chatroom' do
    task = Chatwork::Task.new(body: 'xxx', to_ids: [ENV['CHATWORK_MY_ID']])
    task.prefix_options[:room_id] = ENV['CHATWORK_MYCHAT_ID']
    expect(task.save()).to be true
  end

  it 'can retrieve belongs to room' do
    params = {params: {room_id: ENV['CHATWORK_MYCHAT_ID']}}
    task = Chatwork::Task.first(params)

    expect(task.room).to be_instance_of Chatwork::Room
  end
end
