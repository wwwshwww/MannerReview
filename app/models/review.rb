class Review < ApplicationRecord
  validates :user_id, presence: true
  validates :manner_id, presence: true
  validates :star, presence: true
  belongs_to :user
  belongs_to :manner
end
