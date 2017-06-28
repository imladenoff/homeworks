class UserMailer < ApplicationMailer
  default from: 'from@mladenoff.xyz'

  def welcome_email(user)
    @user = user
    @url = 'http://localhost:3000/'
    mail(to: user.username, subject: 'Welcome to 99 Cats')
  end
end
