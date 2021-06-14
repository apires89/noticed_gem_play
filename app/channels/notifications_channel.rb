class NotificationsChannel < ApplicationCable::Channel
  def subscribed
    notifications = current_user.notifications
    stream_from notifications
  end

end
