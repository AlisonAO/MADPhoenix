class User < ApplicationRecord
	has_many :user_project
	has_many :projects, through: :user_project
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessor :first_name, :last_name

	# validates :first_name, :last_name, presence: true

	# validates_uniqueness_of :name, :picture_url
	# validates :picture_url, format: { with: URI.regexp, message: "Your picture_url URL is incorrect"}


 
end
