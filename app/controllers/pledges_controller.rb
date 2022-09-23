class PledgesController < ApplicationController

  def create
    @pledge = Pledge.new(tier_id: params[:tier_id], user_id: current_user.id)
    if @pledge.save
      redirect_to project_path(:id)
    end
  end
end
