require 'spec_helper'

describe Chatwork::Room do
  room = nil

  it 'can list rooms according to chatroom' do
    rooms = Chatwork::Room.all
    expect(rooms.all? {|r| r.is_a? Chatwork::Room}).to be true
  end

  it 'can retrieve room from chatroom' do
    expect(Chatwork::Room.find(ENV['CHATWORK_MYCHAT_ID'])).to be_instance_of Chatwork::Room
  end

  it 'can create room to chatroom via .create' do
    opts = {members_admin_ids: [ENV['CHATWORK_MY_ID']], name: 'xxx', icon_preset: Chatwork::Room::ICON_GROUP}
    room = Chatwork::Room.create(opts)
    expect(room).to be_instance_of Chatwork::Room
  end

  it 'can update room according to chatroom' do
    room.name = room.name + 'xxx'
    expect(room.save).to be true
  end

  it 'can delete room according to chatroom' do
    result = Chatwork::Room.delete(room.id, action_type: Chatwork::Room::ACTION_DELETE)
    expect(result).to be_instance_of Net::HTTPNoContent
  end
end
