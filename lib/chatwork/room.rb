module Chatwork
  class Room < Base
    ACTION_LEAVE = 'leave'
    ACTION_DELETE = 'delete'

    ICON_GROUP = 'group'
    ICON_CHECK = 'check'
    ICON_DOCUMENT = 'document'
    ICON_MEETING = 'meeting'
    ICON_EVENT = 'event'
    ICON_PROJECT = 'project'
    ICON_BUSINESS = 'business'
    ICON_STUDY = 'study'
    ICON_SECURITY = 'security'
    ICON_STAR = 'star'
    ICON_IDEA = 'idea'
    ICON_HEART = 'heart'
    ICON_MAGCUP = 'magcup'
    ICON_BEER = 'beer'
    ICON_MUSIC = 'music'
    ICON_SPORTS = 'sports'
    ICON_TRAVEL = 'travel'

    self.collection_name = 'rooms'
    self.primary_key = 'room_id'
  end
end
