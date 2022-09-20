class TiersController < ApplicationController
  before_action :set_tier, only: %i[ show edit update destroy ]

  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_tier
    @tier = Tier.find(params[:id])
  end
end
