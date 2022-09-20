class UsersController < ApplicationController
  def new
    @user = User.new
    render template "users/new"
  end

  def create
    @user = User.create
    name: params["name"],
    email: params["email"],
    password: params["password"]
  end
end
