class Post < ApplicationRecord
  belongs_to :user
  after_create :send_notification


  def send_notification
    notification = NewNotification.with(post: self.id)
    notification.deliver_later(self.user)
  end
end
