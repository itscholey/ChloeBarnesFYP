class User < ActiveRecord::Base
  ROLES = %i[admin teacher parent student]
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_and_belongs_to_many :meetings
  has_and_belongs_to_many :messages
end
