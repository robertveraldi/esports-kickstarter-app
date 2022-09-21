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
    @project = Project.new(
      title: params[:project][:title],
      description: params[:project][:description],
      goal_amount: params[:project][:goal_amount],
      start_date: params[:project][:start_date],
      end_date: params[:project][:end_date],
    )
    @project.save
    redirect_to "/projects"
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
end
