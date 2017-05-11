
module Chatwork
  # /rooms/xxx/tasks
  # see http://developer.chatwork.com/ja/endpoint_rooms.html
  class Task < Base
    include Chatwork::NestOfRoom

    STATUS_OPEN = 'open'.freeze
    STATUS_DONE = 'done'.freeze

    self.prefix = '/v2/rooms/:room_id/'
    self.collection_name = 'tasks'
    self.primary_key = 'task_id'
  end
end
