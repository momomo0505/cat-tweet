class Fail < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  validates :title, presence: true, length: { maximum: 12, too_long: 'タイトルは12字以下で入力してください' }
  validates :prefecture, presence: true
  validates :story, presence: true
  validates :image, presence: true

  def liked_by?(user)
    likes.where(user_id: user.id).exists?
  end

end