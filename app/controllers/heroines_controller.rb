class HeroinesController < ApplicationController

  before_action :set_heroine, only: [:show, :edit, :update]
  def index
    @heroines = Heroine.all
  end

  def new
    @heroine = Heroine.new
  end

  def create
    @heroine = Heroine.new(heroine_params)

    if @heroine.valid?
      @heroine.save
      redirect_to @heroine
    else
      render :new
    end
  end

  def update
    if @heroine.update(heroine_params)
      redirect_to @heroine
    else
      render :edit
    end
  end

  private

  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end

  def set_heroine
    @heroine = Heroine.find(params[:id])
  end
end
