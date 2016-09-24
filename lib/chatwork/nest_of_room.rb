module Chatwork
  module NestOfRoom
    def room
      Room.find(prefix_options[:room_id])
    end
  end
end
