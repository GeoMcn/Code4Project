class ProjectController < ApplicationController
  def index
      @projects = Project.all
  end

  def show
      @project = Project.find(params[:id])
      @tasks = @project.tasks
  end
    
  def new
      @project = Project.new
  end
  
  def create
    project = Project.create!(project_params)
    redirect_to root_path
  end
 
  private
    def project_params
      params.require(:project).permit(:title, :content, :price, :image)
    end
    
    

end
