require 'spec_helper'

describe Chatwork::My do
  it 'can list my tasks' do
    expect(Chatwork::My.status).to be_instance_of Hash
  end

  it 'can list my status' do
    tasks = Chatwork::My.tasks(status: Chatwork::Task::STATUS_OPEN)
    expect(tasks.all? { |t| t.is_a?(Chatwork::Task) && t.persisted? }).to be true
  end
end
