class UserMailer < ApplicationMailer
	  default from: 'infomemeti2@gmail.com'

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.signup_confirmation.subject
  #
  def signup_confirmation(user)
  	@user = user
    @greeting = "Hi from Bryan Memeti"

    mail to: user.email, subject: "Sign Up Confirmation"
  end
end