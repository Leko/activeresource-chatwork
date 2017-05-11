require 'spec_helper'

describe Chatwork::IncomingRequest do
  it 'can list incoming requests' do
    requests = Chatwork::IncomingRequest.all
    result = requests.all? do |t|
      t.is_a?(Chatwork::IncomingRequest) && t.persisted?
    end
    expect(result).to be true
  end

  it 'TODO: can approve incoming request'
  it 'TODO: can cancel incoming request'
end
