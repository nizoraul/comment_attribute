class ApplicationRecord < ActiveRecord::Base
  include CommentAttribute
  self.abstract_class = true
end
