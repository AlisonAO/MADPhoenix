class AddApprovedToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :approved, :boolean
  end
end
