
module Chatwork
  # /rooms/xxx/members
  # see http://developer.chatwork.com/ja/endpoint_rooms.html
  class Member < Base
    include Chatwork::NestOfRoom

    self.prefix = '/v2/rooms/:room_id/'
    self.collection_name = 'members'
    self.primary_key = 'account_id'
  end
end
