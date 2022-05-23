class DevelopersController < ApplicationController
  def index
    @developers = Developer.all
  end

  def show
    @booking = Booking.new
    @developer = Developer.find(params[:id])
  end

  def new
    @developer = Developer.new
  end

  def create
    @developer = Developer.new(developers_params)
    @developer.user = current_user

    if @developer.save
      redirect_to developers_path
    else
      render :new
    end
  end

  private

  def developers_params
    params.require(:developer).permit(:rating, :description)
  end
end
