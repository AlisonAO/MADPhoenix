class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :creator
      t.string :image
      t.text :description
      t.text :readme
      t.text :embedd

      t.timestamps
    end
  end
end
