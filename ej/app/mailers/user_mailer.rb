class UserMailer < ApplicationMailer
	default from: "brandeisapprenticeship@gmail.com"
	def notification_email(user)
    @user = user
    mail(to: @user.email, subject: 'Class Discussion')
  end
end
