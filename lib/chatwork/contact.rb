
module Chatwork
  # /contacts
  # see http://developer.chatwork.com/ja/endpoint_contacts.html
  class Contact < Base
    self.collection_name = 'contacts'
    self.primary_key = 'account_id'
  end
end
