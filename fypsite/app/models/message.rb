class Message < ActiveRecord::Base
  belongs_to :user #sender
  has_many :message_recipients
  has_many :users, through: :message_recipients
end
