require 'spec_helper'

describe Chatwork::Member do
  it 'can list members according to chatroom' do
    params = {params: {room_id: ENV['CHATWORK_MYCHAT_ID']}}
    members = Chatwork::Member.all(params)
    expect(members.all? {|m| m.is_a? Chatwork::Member}).to be true
  end

  it 'can retrieve belongs to room' do
    params = {params: {room_id: ENV['CHATWORK_MYCHAT_ID']}}
    member = Chatwork::Member.first(params)

    expect(member.room).to be_instance_of Chatwork::Room
  end
end
