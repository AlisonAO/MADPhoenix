class StaticController < ApplicationController 

	def home
		if signed_in? == true
			if current_user.admin
			  @projects = Project.all
			else
			  @projects = Project.where(approved: true)
			end
		else
			@projects = Project.where(approved: true)
		end 
		render template: "projects/index"
	end
end