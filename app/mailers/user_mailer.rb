class UserMailer < ApplicationMailer
  def welcome_email(user)
    mail(to: 'strymok89@gmail.com', subject: 'Welcome to Petkeeper')
  end
end
