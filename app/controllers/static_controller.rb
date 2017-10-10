class StaticController < ApplicationController 

	def home 
		@projects = Project.all
			render template: "projects/index"
	end
end