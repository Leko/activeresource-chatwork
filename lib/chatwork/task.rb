
module Chatwork
  class Task < Base
    include Chatwork::NestOfRoom

    STATUS_OPEN = 'open'
    STATUS_DONE = 'done'

    self.prefix = '/v1/rooms/:room_id/'
    self.collection_name = 'tasks'
    self.primary_key = 'task_id'
  end
end
