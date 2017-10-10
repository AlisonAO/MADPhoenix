class User < ApplicationRecord
	has_many :user_project
	has_many :projects, through: :user_project
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


 
end
