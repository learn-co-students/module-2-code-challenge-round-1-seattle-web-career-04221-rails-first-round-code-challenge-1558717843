class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end


  def show
    @heroine = Heroine.find(params[:id])
  end

  def create
    @heroine = Heroine.new(heroine_params)
      if @heroine.valid?
        @heroine.save
        redirect_to @heroine
      else
        flash[:errors] = @heroine.errors.full_messages
      redirect_to new_heroine_path
    end
  end

  def new
    @heroine = Heroine.new
  end

private

def heroine_params
  params.require(:heroine).permit!
end

end
