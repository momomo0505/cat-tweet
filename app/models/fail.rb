class Fail < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  validates :title, presence: true
  validates :story, presence: true
  validates :learning, presence: true
  validates :image, presence: true

end
