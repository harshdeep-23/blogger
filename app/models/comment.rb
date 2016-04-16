class Comment < ApplicationRecord
  validates :name, presence: true, length: { maximum: 255 }
  validates :content, presence: true
  belongs_to :article
end
