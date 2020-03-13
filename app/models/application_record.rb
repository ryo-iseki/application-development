class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  Groupdate.time_zone = false
end
