class ProjectsController < ApplicationController
def index
    @projects = Project.all
  end
  def show
    @project = Project.find(params[:id])
  end
  def new
    @project = Project.new
  end
  def create
    new_project = Project.create(project_params)
    new_project.save
    redirect_to new_project
  end
  def edit
    @project = Project.find(params[:id])
  end
  def update
    project = Project.find(params[:id])
    project.update(project_params)
    redirect_to project
  end
  def destroy
    Project.destroy(params[:id])
    redirect_to projects_url
  end
  protected
  def project_params
    params.require(:project).permit(:title, :creator, :image, :description, :readme, :embedd, :tags)
  end
end
