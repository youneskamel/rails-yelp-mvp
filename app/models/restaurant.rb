class Restaurant < ApplicationRecord
   validates :name, presence: true, exclusion: { in: [""] }
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }
  has_many :reviews, dependent: :destroy
end
