
module Chatwork
  class Task < Base
    self.prefix = '/rooms/:room_id/'
    self.collection_name = 'tasks'
    self.primary_key = 'task_id'
  end
end
