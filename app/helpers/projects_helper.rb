module ProjectsHelper
  def edit_project(project)
    if current_user&.id == project.user.id
      link_to "Edit this Project", edit_project_path(project), class: "btn btn-primary btn-lg btn-block mx-2 my-2"
    end
  end

  def delete_project(project)
    if current_user&.id == project.user.id
      button_to "Delete this Project", project, method: :delete, class: "btn btn-primary btn-lg btn-block mx-2 my-2"
    end
  end

  def add_tier
    if current_user&.id == @project.user.id
      button_to "Add Tier", new_tier_path, method: :get, class: "btn btn-primary btn-lg btn-block mx-2 my-2"
    end
  end
end
