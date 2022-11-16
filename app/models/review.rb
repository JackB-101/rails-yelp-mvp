class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, :content, presence: true
  # validates :content, presence: true
  validates :content, length: { minimum: 5 }
  validates :rating, numericality: { only_integer: true }, inclusion: { in: (0..5) }
end
