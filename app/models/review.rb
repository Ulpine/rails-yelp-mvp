class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: { message: 'Ecris quelque chose :)' }
  validates :rating, presence: true, numericality: { in: 0..5 , only_integer: true }
end
