class Message < ApplicationRecord
  belongs_to :sender, class_name: 'User'
  belongs_to :recipient, class_name: 'User'

  def self.unread_messages(user_id)
    where(recipient_id: user_id, read: false).count
  end
  
end