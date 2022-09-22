class TiersController < ApplicationController
  before_action :set_tier, only: %i[ show edit update destroy ]

  def index
  end

  def show
  end

  def new
    @tier = Tier.new
  end

  def create
    @project = Project.last.id
    @tier = Tier.new(tier_params)
    @tier.project_id = @project

    respond_to do |format|
      if @tier.save
        format.html { redirect_to project_path(@project), notice: "Tiers were successfully created." }
        format.json { render :show, status: :created, location: @tier }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tier.errors, status: :unprocessable_entity }
      end
    end
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

  def tier_params
    params.require(:tier).permit(:description, :amount, :limit, :delivery_date, :name, :project_id)
  end
end
