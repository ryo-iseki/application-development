class Spending < ApplicationRecord
  belongs_to :user, optional: true
  has_many :tags, through: :spending_tags
  has_many :spending_tags
  validates :money, presence: true
end
