class Review < ApplicationRecord
  belongs_to :restaurant
  validates :restaurant, presence: true
  validates :content, presence: true
  validates :rating, presence: true, numericality: {greater_than_or_equal_to: 0, less_than_or_equal_to: 5}
end
