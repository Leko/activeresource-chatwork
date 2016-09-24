
module Chatwork
  class Message < Base
    self.prefix = '/rooms/:room_id/'
    self.collection_name = 'messages'
    self.primary_key = 'message_id'
  end
end
