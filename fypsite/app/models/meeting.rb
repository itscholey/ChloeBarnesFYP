class Meeting < ActiveRecord::Base
  belongs_to :user #organiser
  has_many :meeting_attendees
  has_many :users, through: :meeting_attendees
end
