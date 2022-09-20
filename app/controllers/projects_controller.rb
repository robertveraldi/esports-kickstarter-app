class ProjectsController < ApplicationController
  def index
    @projects = Project.all
    render template: "projects/index"
  end
end
