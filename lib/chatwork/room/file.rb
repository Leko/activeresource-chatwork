
module Chatwork
  module Room
    class File < Chatwork::Base
      self.prefix = '/rooms/:room_id/'
      self.collection_name = 'files'
    end
  end
end
