require 'spec_helper'

describe Chatwork::Message do
  it 'can list messages according to chatroom' do
    params = {params: {force: 1, room_id: ENV['CHATWORK_MYCHAT_ID']}}
    messages = Chatwork::Message.all(params)
    expect(messages.all? {|m| m.is_a? Chatwork::Message}).to be true
  end

  it 'can retrieve message from chatroom' do
    params = {params: {force: 1, room_id: ENV['CHATWORK_MYCHAT_ID']}}
    message = Chatwork::Message.find(Chatwork::Message.first(params).id, params)

    expect(message).to be_instance_of Chatwork::Message
  end

  it 'can create message to chatroom' do
    message = Chatwork::Message.new :body => 'xxx'
    message.prefix_options[:room_id] = ENV['CHATWORK_MYCHAT_ID']
    expect(message.save).to be true
  end

  it 'can retrieve belongs to room' do
    params = {params: {force: 1, room_id: ENV['CHATWORK_MYCHAT_ID']}}
    message = Chatwork::Message.first(params)

    expect(message.room).to be_instance_of Chatwork::Room
  end
end
