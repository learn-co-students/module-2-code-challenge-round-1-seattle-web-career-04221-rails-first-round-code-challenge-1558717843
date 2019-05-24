class PowersController < ApplicationController
  def index
    @powers = Power.all
  end

  def new
    @powers = Power.new
  end
  
  def create
    @powers = Power.create(set_params)
    redirect_to @powers
  end

  def show
    @power = Power.find(params[:id])
  end

  def edit
    @power = Power.find(params[:id])
  end

  def update
    @powers = Power.update(set_params)
  end

  private

  def set_power
    @power = Power.find(params[:id])

  def set_params
    params.require(:power).permit(:name, :description))
  end
end
