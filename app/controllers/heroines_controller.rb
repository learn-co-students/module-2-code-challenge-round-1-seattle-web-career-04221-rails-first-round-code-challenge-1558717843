class HeroinesController < ApplicationController

  before_action :set_heroine, only: [:show, :edit, :update]

  def index
    @heroines = Heroine.all
  end

  # def show
  #   @heroine = Heroine.find(params[:id])
  # end

  def new
    @heroine = Heroine.new
  end

  def create
    @heroine = Heroine.new(heroine_params)

    if @heroine.save
      redirect_to heroine_path(@heroine)
    else
      render :new
    end
  end

  # def edit
  #   @heroine = Heroine.find(params[:id])
  # end

  def update
    # @heroine = Heroine.find(params[:id])

    if @heroine.update(heroine_params)
      redirect_to heroine_path(@heroine)
    else
      render :edit
    end
  end

  private
  
    def heroine_params
      params.require(:heroine).permit!
    end

    def set_heroine
      @heroine = Heroine.find(params[:id])
    end
end
