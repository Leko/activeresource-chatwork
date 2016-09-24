require 'spec_helper'

describe Chatwork::Room do
  room = nil

  it 'can list rooms according to chatroom' do
    rooms = Chatwork::Room.all
    expect(rooms.all? { |r| r.is_a? Chatwork::Room }).to be true
  end

  it 'can retrieve room from chatroom' do
    expect(Chatwork::Room.find(ENV['CHATWORK_MYCHAT_ID'])).to be_instance_of Chatwork::Room
  end

  it 'can create room to chatroom via .create' do
    opts = { members_admin_ids: [ENV['CHATWORK_MY_ID']], name: 'xxx', icon_preset: Chatwork::Room::ICON_GROUP }
    room = Chatwork::Room.create(opts)
    expect(room).to be_instance_of Chatwork::Room
  end

  it 'can update room according to chatroom' do
    room.name = room.name + 'xxx'
    expect(room.save).to be true
  end

  it 'can update room members according to chatroom' do
    expect(room.put(:members, members_admin_ids: [ENV['CHATWORK_MY_ID']].join(','))).to be_instance_of Net::HTTPOK
  end

  it 'can delete room according to chatroom' do
    result = Chatwork::Room.delete(room.id, action_type: Chatwork::Room::ACTION_DELETE)
    expect(result).to be_instance_of Net::HTTPNoContent
  end

  it '#messages() can list messages according to chatroom' do
    room = Chatwork::Room.find(ENV['CHATWORK_MYCHAT_ID'])
    expect(room.messages(force: 1).all? { |m| m.is_a? Chatwork::Message }).to be true
  end

  it '#message() can retrieve message according to chatroom' do
    room = Chatwork::Room.find(ENV['CHATWORK_MYCHAT_ID'])
    message = room.messages(force: 1).first
    expect(room.message(message.id)).to be_instance_of Chatwork::Message
  end

  it '#members() can list members according to chatroom' do
    room = Chatwork::Room.find(ENV['CHATWORK_MYCHAT_ID'])
    expect(room.members.all? { |m| m.is_a? Chatwork::Member }).to be true
  end

  it '#files() can list files according to chatroom' do
    room = Chatwork::Room.find(ENV['CHATWORK_MYCHAT_ID'])
    expect(room.files.all? { |m| m.is_a? Chatwork::File }).to be true
  end

  it '#file() can retrieve file according to chatroom' do
    room = Chatwork::Room.find(ENV['CHATWORK_MYCHAT_ID'])
    file = room.files.first
    expect(room.file(file.id)).to be_instance_of Chatwork::File
  end

  it '#tasks() can list tasks according to chatroom' do
    room = Chatwork::Room.find(ENV['CHATWORK_MYCHAT_ID'])
    expect(room.tasks.all? { |m| m.is_a? Chatwork::Task }).to be true
  end

  it '#task() can retrieve task according to chatroom' do
    room = Chatwork::Room.find(ENV['CHATWORK_MYCHAT_ID'])
    task = room.tasks.first
    expect(room.task(task.id)).to be_instance_of Chatwork::Task
  end
end
