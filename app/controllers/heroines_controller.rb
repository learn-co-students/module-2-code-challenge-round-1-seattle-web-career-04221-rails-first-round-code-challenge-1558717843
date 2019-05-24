class HeroinesController < ApplicationController
  before_action :find_heroine, only: [:show, :edit, :update]
  def index
    @heroines = Heroine.all
  end

  def show
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

  def edit
  end

  def update
  	@heroine = Heroine.update(heroine_params)
  end


  private

  def find_heroine
  	@heroine = Heroine.find(params[:id])
  end

  def heroine_params
  	params.require(:heroine).permit(:name, :super_name, :power_id)
  end
end
