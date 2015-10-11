# Preview all emails at http://localhost:3000/rails/mailers/cyspath_mailer
class CyspathMailerPreview < ActionMailer::Preview

    def sample_mail_preview
      CyspathMailer.sample_email(User.first)
    end

# http://localhost:3000/rails/mailers/example_mailer/sample_mail_preview

end
