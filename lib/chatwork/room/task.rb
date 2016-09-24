
module Chatwork
  module Room
    class Task < Chatwork::Base
      self.prefix = '/rooms/:room_id/'
      self.collection_name = 'tasks'
    end
  end
end
