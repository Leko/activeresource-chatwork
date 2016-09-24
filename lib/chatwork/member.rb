
module Chatwork
  class Member < Base
    include Chatwork::NestOfRoom

    self.prefix = '/v1/rooms/:room_id/'
    self.collection_name = 'members'
    self.primary_key = 'account_id'
  end
end
