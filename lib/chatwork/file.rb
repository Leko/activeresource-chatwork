
module Chatwork
  class File < Base
    self.prefix = '/rooms/:room_id/'
    self.collection_name = 'files'
    self.primary_key = 'file_id'
  end
end
