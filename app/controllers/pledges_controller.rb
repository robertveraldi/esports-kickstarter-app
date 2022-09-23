class PledgesController < ApplicationController
  
  def create
    @pledge = Pledge.new(tier_id: params[:tier_id], user_id: current_user.id)
    @pledge.save
  end

end
