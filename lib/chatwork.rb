require 'chatwork/version'

# Define autoloads
module Chatwork
  autoload :Base, 'chatwork/base'
  autoload :Contact, 'chatwork/contact'
  autoload :My, 'chatwork/my'
  autoload :IncomingRequest, 'chatwork/incoming_request'
  autoload :Room, 'chatwork/room'
  autoload :Message, 'chatwork/message'
  autoload :Member, 'chatwork/member'
  autoload :Task, 'chatwork/task'
  autoload :File, 'chatwork/file'
  autoload :NestOfRoom, 'chatwork/nest_of_room'
end
