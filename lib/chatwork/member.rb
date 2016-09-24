
module Chatwork
  class Member < Base
    self.prefix = '/rooms/:room_id/'
    self.collection_name = 'members'
    self.primary_key = 'account_id'
  end
end
