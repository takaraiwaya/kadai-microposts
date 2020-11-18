class Micropost < ApplicationRecord
  belongs_to :user
  has_many :favorites, dependent: :destroy
  has_many :users, through: :favorites
  has_many :favorited_users, through: :favorites, source: :user
  validates :content, presence: true, length: { maximum: 255 }
end
