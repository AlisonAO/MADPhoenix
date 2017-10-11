class Project < ApplicationRecord
	

	validates :title, :creator, :image, :description, :readme, :tags, presence: true
	validates :description, length: { minimum: 10, message: "is too short"}

end

