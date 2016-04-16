class Tag < ApplicationRecord
  validates :name, presence: true, length: { maximum: 255 }
  has_many :taggings
  has_many :articles, through: :taggings
end
