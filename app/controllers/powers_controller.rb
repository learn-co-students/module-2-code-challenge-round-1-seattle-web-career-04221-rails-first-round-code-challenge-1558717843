class PowersController < ApplicationController
  def index
    @powers = Power.all
  end

  def show
    @power = Power.find(params[:id])
  end

  def new
    @power = Power.new
  end

  def create
    @power = Power.new(powers_params)
    if @power.save
      redirect_to @power
    else
      render :new
    end
  end


  def edit
    @power = Power.find(params[:id])
  end

  def update
    @power = Power.find(params[:id])
    if @power.update(powers_params)
      redirect_to @power
    else
      render :edit
    end
  end

  private

  def powers_params
    params.require(:heriones).permit(:name, :description)
  end
end
