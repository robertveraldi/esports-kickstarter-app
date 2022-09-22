class ProjectsController < ApplicationController
  before_action :set_project, only: %i[show edit update destroy]
  before_action :set_tier, only: %i[show edit update destroy]

  def index
    @projects = Project.all
    render template: "projects/index"
  end

  def show
    @project = Project.find_by(id: params[:id])
    render template: "projects/show"
  end

  def new
    @project = Project.new
    render template: "projects/new"
  end

  def create
    @project = Project.new(project_params)
    @project.save
    redirect_to new_tier_path
  end

  def destroy
    @project = Project.find_by(id: params[:id])
    @project.destroy
    redirect_to "/projects", status: :see_other
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end

  def set_tier
    @tier = Project.find_by(id: params[:id]).tiers
  end

  def project_params
    params.require(:project).permit(:title, :description, :goal_amount, :current_amount, :logo, :start_date, :end_date)
  end
end
