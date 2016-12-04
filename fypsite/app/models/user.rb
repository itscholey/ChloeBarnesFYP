class User < ActiveRecord::Base
  ROLES = %i[admin teacher parent student]
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_many :meeting_attendees
  has_many :meetings, through: :meeting_attendees

  has_many :message_recipients
  has_many :messages, through: :message_recipients
end
