class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, presence: true
  validates :restaurant_id, presence: true
  validates :rating, numericality: { only_integer: true }, inclusion: { in: [1, 2, 3, 4, 5], message: 'Please select between 1-5' }
end
