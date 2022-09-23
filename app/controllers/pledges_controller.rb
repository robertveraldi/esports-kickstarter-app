class PledgesController < ApplicationController
  before_action :set_tiers, only: %i[ new create ]

  def show
  end

  def new
  end

  def create
    @pledge = Pledge.new(tier_id: @tiers.id, user_id: current_user.id)
    @pledge.save
  end

  def delete
  end

  private

  def set_tiers
    @tiers = Project.find_by(id: params[:id]).tiers
  end
end
