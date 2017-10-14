class Project < ApplicationRecord
	
		has_attached_file :image, styles: { 
		small: "64x64", 
		med: "200x200", 
		large: "400x400" 
	}

	validates_attachment :image,
                     content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
	validates :description, length: { minimum: 10, message: "is too short"}
	validates :title, :creator, :image, :description, :readme, :tags, presence: true
	

	def self.search(search)
  		where("title ILIKE ? OR creator ILIKE ? OR description ILIKE ? OR tags ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%") 
end
end


