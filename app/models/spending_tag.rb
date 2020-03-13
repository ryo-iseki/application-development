class SpendingTag < ApplicationRecord
  belongs_to :tag
  belongs_to :spending
end
