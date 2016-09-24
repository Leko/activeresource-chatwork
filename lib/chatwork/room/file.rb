
module Chatwork
  module Room
    class File < Base
      self.prefix = '/rooms/:room_id/'
      self.collection = 'files'
    end
  end
end
