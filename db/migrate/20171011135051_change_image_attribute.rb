class ChangeImageAttribute < ActiveRecord::Migration[5.1]
  def self.up
    change_table :projects do |t|
      t.attachment :image
    end
  end

end
