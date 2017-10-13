class AddImageToProjects < ActiveRecord::Migration[5.1]
  def self.down
    remove_attachment :projects, :image
  end
end
