class Tag < ApplicationRecord
  has_many :spending_tags
  has_many :spendings, through: :spending_tags
end
