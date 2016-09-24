require 'chatwork/version'

module Chatwork
  autoload :Base, 'chatwork/base'
  autoload :Room, 'chatwork/room'
  autoload :Message, 'chatwork/message'
  autoload :Member, 'chatwork/member'
  autoload :Task, 'chatwork/task'
  autoload :File, 'chatwork/file'
  autoload :NestOfRoom, 'chatwork/nest_of_room'
end
