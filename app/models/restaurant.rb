class Restaurant < ApplicationRecord
  has_many :review, dependent: :destroy
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }
  validates_associated :review
end
