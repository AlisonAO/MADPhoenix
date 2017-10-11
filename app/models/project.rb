class Project < ApplicationRecord
	

	validates :title, :creator, :image, :description, :readme, :tags, presence: true
	validates :description, length: { minimum: 10, message: "is too short"}

	def self.search(search)
  		where("title ILIKE ? OR creator ILIKE ? OR description ILIKE ? OR tags ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%") 
end
end


