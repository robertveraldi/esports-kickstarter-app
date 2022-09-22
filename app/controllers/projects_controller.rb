class ProjectsController < ApplicationController
  before_action :set_project, only: %i[show edit update destroy]
  before_action :set_tiers, only: %i[show edit update destroy]

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
    @project.user_id = current_user.id
    @project.save
    redirect_to new_tier_path
  end

  def edit
    @project = Project.find(params[:id])
    if current_user && current_user.id == @project.user_id # if logged in and own project
      render template: "projects/edit"
    else
      # render an error message (in a pop up?) that says you must be signed in and own a project to edit it
      redirect_to @project
    end
  end

  def update
    @project = Project.find(params[:id])
    @project.title = params[:project][:title] || @project.title
    @project.description = params[:project][:description] || @project.description
    @project.goal_amount = params[:project][:goal_amount] || @project.goal_amount
    @project.end_date = params[:project][:end_date] || @project.end_date
    if @project.save!
      redirect_to @project
    else
      render :edit, status: :unprocessable_entity
    end
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

  def set_tiers
    @tiers = Project.find_by(id: params[:id]).tiers
  end

  def project_params
    params.require(:project).permit(:title, :description, :goal_amount, :current_amount, :logo, :start_date, :end_date, :user_id)
  end
end
