class HeroinesController < ApplicationController
  
  before_action :set_heroine, only: [:show, :edit, :update]
  
  def index
    @heroines = Heroine.search(params[:search])
  end

  def new
    @heroine = Heroine.new
  end

  def create
    @heroine = Heroine.new(heroine_params)

    if @heroine.save
      redirect_to @heroine
    else
      render :new
    end
  end

  def update
    if @heroine.update
      redirect_to @heroine
    else
      render :edit
    end
  end



  private

  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id, :search)
  end

  def set_heroine
    @heroine = Heroine.find(params[:id])
  end


end
