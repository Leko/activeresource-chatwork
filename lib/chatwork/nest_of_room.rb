module Chatwork
  # Utility for /rooms/xxx/* route classes
  module NestOfRoom
    def room
      Room.find(prefix_options[:room_id])
    end
  end
end
