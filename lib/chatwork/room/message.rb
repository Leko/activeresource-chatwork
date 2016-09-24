
module Chatwork
  module Room
    class Message < Base
      self.prefix = '/rooms/:room_id/'
      self.collection = 'messages'
    end
  end
end
