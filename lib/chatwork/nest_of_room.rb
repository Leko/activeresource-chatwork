module Chatwork
  module NestOfRoom
    def room
      Room.find(self.prefix_options[:room_id])
    end
  end
end
