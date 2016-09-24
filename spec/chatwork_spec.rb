require 'spec_helper'

describe Chatwork do
  it 'has a version number' do
    expect(Chatwork::VERSION).not_to be nil
  end

  it 'has autoload about Chatwork::Room' do
    expect(Chatwork::Room).not_to be nil
  end
end
