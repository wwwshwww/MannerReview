class Manner < ApplicationRecord
  validates :manner, presence: true
  has_many :reviews
end
