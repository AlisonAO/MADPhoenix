class Project < ApplicationRecord
	has_attached_file :image

	validates_attachment :image,
                     content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }

	validates :title, :creator, :image, :description, :readme, :tags, presence: true
	validates :description, length: { minimum: 10, message: "is too short"}

end

