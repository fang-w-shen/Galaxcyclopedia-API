class UserMailer < ApplicationMailer

  def account_activation(user)
    @user = user
    mail to: user.email, subject: "Account Activation"
  end

  def password_reset(user)
    @user = user
    mail to: user.email, subject: "Password Reset"
  end

  def send_email(email)
    @email = email
    mail to: 'funkapunkafide@gmail.com', subject: "Questions/ Comments"
  end
end