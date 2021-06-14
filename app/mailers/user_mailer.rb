class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.notification.subject
  #
  def new_notification
    @user = params[:recipient]
    mail(to: @user.email, subject: "You have a new notification!")
  end
end
