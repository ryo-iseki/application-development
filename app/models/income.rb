class Income < ApplicationRecord
  belongs_to :user
  validates :money, presence: true
  
end
