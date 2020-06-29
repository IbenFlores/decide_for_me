class UserMailer < ApplicationMailer
  default from: 'decide.for.me.noreply@gmail.com'

  def welcome_email(user)
    @user = user
    @username = user.username
    @url = 'http://www.decide-for.me/users/sign_in'
    mail(to: @user.email, subject: 'Decide For Me confirmation email!')
  end
end
