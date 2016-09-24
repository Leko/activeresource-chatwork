
module Chatwork
  class My < Base
    self.collection_name = 'my'

    def self.status
      get(:status)
    end

    def self.tasks(params = {})
      get(:tasks, params).map { |t| Chatwork::Task.new(t, true) }
    end
  end
end
