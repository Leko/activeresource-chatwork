
module Chatwork
  module Room
    class Task < Base
      self.prefix = '/rooms/:room_id/'
      self.collection = 'tasks'
    end
  end
end
