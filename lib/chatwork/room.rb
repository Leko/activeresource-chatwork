module Chatwork
  # /rooms
  # see http://developer.chatwork.com/ja/endpoint_rooms.html
  class Room < Base
    ACTION_LEAVE = 'leave'.freeze
    ACTION_DELETE = 'delete'.freeze

    ICON_GROUP = 'group'.freeze
    ICON_CHECK = 'check'.freeze
    ICON_DOCUMENT = 'document'.freeze
    ICON_MEETING = 'meeting'.freeze
    ICON_EVENT = 'event'.freeze
    ICON_PROJECT = 'project'.freeze
    ICON_BUSINESS = 'business'.freeze
    ICON_STUDY = 'study'.freeze
    ICON_SECURITY = 'security'.freeze
    ICON_STAR = 'star'.freeze
    ICON_IDEA = 'idea'.freeze
    ICON_HEART = 'heart'.freeze
    ICON_MAGCUP = 'magcup'.freeze
    ICON_BEER = 'beer'.freeze
    ICON_MUSIC = 'music'.freeze
    ICON_SPORTS = 'sports'.freeze
    ICON_TRAVEL = 'travel'.freeze

    has_many :members, :class_name => 'chatwork/member'

    self.collection_name = 'rooms'
    self.primary_key = 'room_id'

    def messages(params = {})
      Message.all(params: subroute_params(params))
    end

    def message(pk)
      Message.find(pk, params: subroute_params)
    end

    def update_members(params = {})
      put(:members, params)
    end

    def files(params = {})
      File.all(params: subroute_params(params))
    end

    def file(pk)
      File.find(pk, params: subroute_params)
    end

    def tasks(params = {})
      Task.all(params: subroute_params(params))
    end

    def task(pk)
      Task.find(pk, params: subroute_params)
    end

    private

    def subroute_params(additional = {})
      { room_id: room_id }.merge(additional)
    end
  end
end
