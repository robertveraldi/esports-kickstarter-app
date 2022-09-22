module ProjectsHelper
  def update_current_amount
    @project.current amount
  end

  def edit_project(project)
    if current_user&.id == project.user.id
      link_to "Edit this Project", edit_project_path(project)
    end
  end

  def delete_project(project)
    if current_user&.id == project.user.id
      button_to "Delete this Project", project, method: :delete
    end
  end
end
