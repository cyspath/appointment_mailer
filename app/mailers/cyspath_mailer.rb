class CyspathMailer < ApplicationMailer
  default from: "appointment.mailer@gmail.com"

  def sample_email(user)
    @user = user
    mail(to: @user.email, subject: 'Automated Email From Michael')
  end

end
