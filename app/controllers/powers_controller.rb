class PowersController < ApplicationController
  before_action :find_power, only: [:show, :edit, :update]
  def index
    @powers = Power.all
  end

  def show
  end

  def new
  	@power = Power.new
  end

  def create
  	@power = Power.create(power_params)
  end

  def edit
  end

  def update
  	@power = Power.update(power_params)
  end


  private

  def find_power
  	@power = Power.find(params[:id])
  end

  def power_params
  	params.require(:power).permit(:name, :description)
  end
end
