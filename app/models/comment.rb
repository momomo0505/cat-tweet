class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :fail
  validates :content, presence: true
end
