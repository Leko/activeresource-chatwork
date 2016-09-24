
module Chatwork
  module Room
    class Member < Chatwork::Base
      self.prefix = '/rooms/:room_id/'
      self.collection_name = 'members'
    end
  end
end
