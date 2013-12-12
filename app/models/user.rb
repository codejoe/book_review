class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  scope :admin,     -> { where(role: 'admin') }
  scope :visitor,   -> { where(role: 'visitor') }
  scope :reviewer,  -> { where(role: 'reviewer') }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  
end
