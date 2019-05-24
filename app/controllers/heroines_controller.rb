class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def show
    if params[:id] == "search"

      @power = Power.find_by(name: params[:q])
      @heroines = Heroine.where(power_id: @power.id)
      render :search
      return
    else
      @heroine = Heroine.find(params[:id])
    end
  end

  def new
    @heroine = Heroine.new
  end

  def create
    @heroine = Heroine.create(heroine_params)
    redirect_to @heroine
  end

  def search
    # byebug
    # @heroines = Heroine.where(search: params[:q])
  end

  private
  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end

end
