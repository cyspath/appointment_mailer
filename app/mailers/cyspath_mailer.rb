class CyspathMailer < ApplicationMailer
  default from: "appointment.mailer@gmail.com"

  def sample_email(patient)
    @patient = patient
    mail(to: @patient.email, subject: 'Medical Appointment Reminder')
  end

end
