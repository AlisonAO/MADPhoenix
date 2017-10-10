class Project < ApplicationRecord
	has_many :user_project
	has_many :users, through: :user_project

	validates :title, :creator, :image, :description, :readme, :tags, presence: true
	validates :description, length: { minimum: 10, message: "Sorry your description is too short"}

end

