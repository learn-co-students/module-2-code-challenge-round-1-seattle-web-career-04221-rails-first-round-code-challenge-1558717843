class HeroinesController < ApplicationController

before_action :set_heroine, only: [:edit, :show, :update]

  def index
    @heroines = Heroine.all
  end

  def new
    if flash[:heroine_attributes]
      @heroine = Heroine.new(flash[:heroine_attributes])
    else
    @heroine = Heroine.new
    end
  end

  def create
    @heroine = Heroine.new(heroine_params)

    if @heroine.save
      redirect_to @heroine
    else
      flash[:errors] = @heroine.errors.full_messages
      flash[:heroine_attributes] = @heroine.attributes

      render :new
    end
  end

  def update
    if @heroine.update(heroine_params)
      redirect_to @heroine
    else
      flash[:errors] = @heroine.errors.full_messages
      flash[:heroine_attributes] = @heroine.attributes
    end
  end

  def search
      super_power = Power.find_by(name: params[:q])

     @heroines = Heroine.all.where(power: super_power)
     


    render :index
  end














  private

  def set_heroine
    @heroine = Heroine.find(params[:id])
  end

  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end
end
