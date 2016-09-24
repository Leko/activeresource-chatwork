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
end
