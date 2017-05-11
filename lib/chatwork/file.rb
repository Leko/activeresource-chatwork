
module Chatwork
  # /rooms/xxx/files
  # see http://developer.chatwork.com/ja/endpoint_rooms.html
  class File < Base
    include Chatwork::NestOfRoom

    self.prefix = '/v2/rooms/:room_id/'
    self.collection_name = 'files'
    self.primary_key = 'file_id'
  end
end
