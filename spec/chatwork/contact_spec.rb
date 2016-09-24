require 'spec_helper'

describe Chatwork::Contact do
  it 'can list my contacts' do
    contacts = Chatwork::Contact.all
    expect(contacts.all? { |c| c.is_a? Chatwork::Contact }).to be true
  end
end
