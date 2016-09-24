require 'chatwork/version'

module Chatwork
  module Room
  end
end

Chatwork::Room.autoload :Message, 'room/message'
Chatwork::Room.autoload :Member, 'room/member'
Chatwork::Room.autoload :File, 'room/file'
Chatwork::Room.autoload :Task, 'room/task'
