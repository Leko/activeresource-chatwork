
module Chatwork
  class Contact < Base
    self.collection_name = 'contacts'
    self.primary_key = 'account_id'
  end
end
