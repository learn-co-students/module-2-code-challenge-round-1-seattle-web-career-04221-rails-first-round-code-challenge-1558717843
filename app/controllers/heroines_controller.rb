class HeroinesController < ApplicationController

  def index
    @heroines = Heroine.all
  end

  def show
    @heroine = Heroine.find(params[:id])
  end

  def new
    @heroine = Heroine.new
  end

  def create
    @heroine = Heroine.new(heroines_params)
    if @heroine.save
      redirect_to @heroine
    else
      render :new
    end
  end


  def edit
    @heroine = Heroine.find(params[:id])
  end

  def update
    @heroine = Heroine.find(params[:id])
    if @heroine.update(heroines_params)
      redirect_to @heroine
    else
      render :edit
    end
  end

  private

  def heroines_params
    params.require(:heroines).permit!
  end
end
