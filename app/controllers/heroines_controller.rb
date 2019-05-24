class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def new
    @powheroinesers = Heroine.new
  end
  
  def create
    @heroines = Heroine.create(set_params)
    redirect_to @heroine
  end

  def show
    @heroine = Heroine.find(params[:id])
  end

  def edit
    @heroine = Heroine.find(params[:id])
  end

  def update
    @heroines = Heroine.update(set_params)
    redirect_to @heroine
  end

private

  def set_params
    params.require(:heroine).permit(:name, :description)
  end

end
