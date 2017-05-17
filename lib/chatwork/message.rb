
module Chatwork
  # /rooms/xxx/messages
  # see http://developer.chatwork.com/ja/endpoint_rooms.html
  class Message < Base
    include Chatwork::NestOfRoom

    self.prefix = '/v2/rooms/:room_id/'
    self.collection_name = 'messages'
    self.primary_key = 'message_id'
  end
end
