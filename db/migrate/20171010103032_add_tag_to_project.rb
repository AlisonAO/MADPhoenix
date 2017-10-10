class AddTagToProject < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :tags, :string
  end
end
