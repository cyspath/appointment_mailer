class Appointment < ActiveRecord::Base
  validates :date, presence: true
  validate :date_cannot_be_in_the_past
  validates :time, presence: true

  validate :time_cannot_be_in_the_past
  validates :location, presence: true

  belongs_to :patient


  def date_cannot_be_in_the_past
    errors.add(:date, "must be a future date") if date < Date.today
  end

  def time_cannot_be_in_the_past
    errors.add(:time, "must be in the future") if time < Time.now
  end

end
