module ApplicationHelper
  def user_status
    if current_user == nil
      link_to "Login", login_path, class: "btn btn-secondary mx-2"
    else
      link_to "Logout", logout_path, class: "btn btn-secondary mx-2"
    end
  end

  def user_page
    if current_user == nil
    else
      link_to "Profile", user_path(current_user), class: "btn btn-secondary mx-2"
    end
  end
end
