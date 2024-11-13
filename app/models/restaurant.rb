class Restaurant < ApplicationRecord
CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]

  has_many :reviews, dependent: :destroy

  validates :name, :address, presence: true
  validates :category, inclusion: { in: CATEGORY }

  def self.random_category
    CATEGORY.sample
  end
end
