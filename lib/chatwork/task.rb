
module Chatwork
  class Task < Base
    include Chatwork::NestOfRoom

    STATUS_OPEN = 'open'.freeze
    STATUS_DONE = 'done'.freeze

    self.prefix = '/v1/rooms/:room_id/'
    self.collection_name = 'tasks'
    self.primary_key = 'task_id'
  end
end
