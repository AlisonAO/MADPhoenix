class ProjectsController < ApplicationController
  before_action :authenticate_user!
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:search]
      @projects = Project.search(params[:search]).order("created_at DESC")
    else
      @projects = Project.all.order("created_at DESC")
    end
  end

  def show
   
     @project = Project.find(params[:id])
  end

  def new
    @project = current_user.projects.new
  end

  def create
    @project = current_user.projects.create(project_params)
    if @project.save
     redirect_to "/projects"
    else
      render :new
    end
  end

  def edit
    @project = current_user.projects.find(params[:id])
  end

  def update
    if signed_in?
      if current_user.admin
        project = Project.find(params[:id])
        project.update(project_params)
      else
        project = current_user.projects.find(params[:id])
        project.update!(project_params)
      end
    else
      render :edit
    end
    redirect_to "/projects"
  end

  def destroy
    current_user.projects.destroy(params[:id])
    redirect_to projects_url
  end

  protected
    def project_params
      params.require(:project).permit(:title, :creator, :image, :description, :readme, :embedd, :tags, :approved, :id)
    end
end
