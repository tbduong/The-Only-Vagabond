class UserMailer < ApplicationMailer
  default from: 'theonlyvagabondteam@gmail.com'

  def welcome_email(user)
    @user = user
    @url = "https://the-only-vagabond.herokuapp.com/login"
    mail(to: @user.email, subject: 'Welcome to Vagabond!')
  end
end
