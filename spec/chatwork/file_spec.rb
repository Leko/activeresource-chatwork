require 'spec_helper'

describe Chatwork::File do
  it 'can list files according to chatroom' do
    params = {params: {room_id: ENV['CHATWORK_MYCHAT_ID']}}
    files = Chatwork::File.all(params)
    expect(files.all? {|f| f.is_a? Chatwork::File}).to be true
  end

  it 'can retrieve file from chatroom' do
    params = {params: {room_id: ENV['CHATWORK_MYCHAT_ID']}}
    file = Chatwork::File.first(params)

    expect(Chatwork::File.find(file.id, params)).to be_instance_of Chatwork::File
  end

  it 'can retrieve belongs to room' do
    params = {params: {room_id: ENV['CHATWORK_MYCHAT_ID']}}
    file = Chatwork::File.first(params)

    expect(file.room).to be_instance_of Chatwork::Room
  end
end
