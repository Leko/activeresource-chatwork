
module Chatwork
  # /incoming_requests
  # see http://developer.chatwork.com/ja/endpoint_incoming_requests.html
  class IncomingRequest < Base
    self.collection_name = 'incoming_requests'
    self.primary_key = 'request_id'
  end
end
