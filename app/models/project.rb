class Project < ApplicationRecord
	
		has_attached_file :image, styles: { 
		small: "64x64", 
		med: "200x200", 
		large: "400x400" 
	}

	validates_attachment :image,
                     content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
	validates :description, presence: { message: " "}
	validates :title, :creator, :image, :readme, :tags, presence: true
	validates :description, length: { minimum: 10, message: "is too short"}


	def self.search(search)
  		where("title ILIKE ? OR creator ILIKE ? OR description ILIKE ? OR tags ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%") 
	end
end



