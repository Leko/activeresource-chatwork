
module Chatwork
  module Room
    class Member < Base
      self.prefix = '/rooms/:room_id/'
      self.collection = 'members'
    end
  end
end
