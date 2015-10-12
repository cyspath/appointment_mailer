class Patient < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true


  def send_reminder
    CyspathMailer.sample_email(self).deliver
  end

end
