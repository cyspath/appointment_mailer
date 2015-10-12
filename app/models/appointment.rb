class Appointment < ActiveRecord::Base
  validates :date, presence: true
  validates :time, presence: true
  validate :datetime_cannot_be_in_the_past
  validates :location, presence: true

  belongs_to :patient


  def datetime_cannot_be_in_the_past
    if date < Date.today
      errors.add(:date, "must be a future date")
    end

    if date == Date.today && time.seconds_since_midnight < Time.now.seconds_since_midnight
      errors.add(:time, "must be in the future")
    end

  end

end
