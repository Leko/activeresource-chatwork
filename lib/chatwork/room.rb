require 'chatwork/version'

module Chatwork
  module Room
  end
end

Chatwork::Room.autoload :Message, 'chatwork/room/message'
Chatwork::Room.autoload :Member, 'chatwork/room/member'
Chatwork::Room.autoload :File, 'chatwork/room/file'
Chatwork::Room.autoload :Task, 'chatwork/room/task'
