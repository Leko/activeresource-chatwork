
module Chatwork
  module Room
    class Message < Chatwork::Base
      self.prefix = '/rooms/:room_id/'
      self.collection_name = 'messages'
    end
  end
end
