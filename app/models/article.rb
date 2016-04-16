class Article < ApplicationRecord
  validates :title, presence: true, length: { maximum: 255 }
  validates :content, presence: true

  has_many :comments
  has_many :taggings, dependent: :destroy
  has_many :tags, through: :taggings
end
