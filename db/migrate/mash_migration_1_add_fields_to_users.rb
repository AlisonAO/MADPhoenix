class AddFieldsToUsers < ActiveRecord::Migration[5.1]
	def change 
		add_column :users, :first_name, :string
		add_column :users, :last_name, :string
		add_column :users, :github_link, :string
		add_column :users, :linkedin_link, :string
		add_column :users, :position, :string
		add_column :users, :profile_pic, :text
	end
end
