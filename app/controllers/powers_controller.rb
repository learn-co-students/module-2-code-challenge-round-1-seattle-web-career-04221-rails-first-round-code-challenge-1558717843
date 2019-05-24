class PowersController < ApplicationController

  before_action :set_power, only: [:edit, :show, :update]

  def index
    @powers = Power.all
  end










  private

  def set_power
    @power = Power.find(params[:id])
  end

  def power_params
    params.require(:power).permit(:name, :description)
  end
end
