require 'spec_helper'

describe Chatwork::Room do
  it 'has autoload about Chatwork::Room::Member' do
    expect(Chatwork::Room::Member).not_to be nil
  end

  it 'has autoload about Chatwork::Room::Message' do
    expect(Chatwork::Room::Message).not_to be nil
  end

  it 'has autoload about Chatwork::Room::Task' do
    expect(Chatwork::Room::Task).not_to be nil
  end

  it 'has autoload about Chatwork::Room::File' do
    expect(Chatwork::Room::File).not_to be nil
  end

  it 'can list rooms according to chatroom'
  it 'can retrieve room from chatroom'
  it 'can create room to chatroom'
  it 'can update room according to chatroom'
  it 'can delete room according to chatroom'
end
