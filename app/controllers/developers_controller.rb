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

  def edit
    @developer = Developer.find(params[:id])
  end

  def update
    @developer = Developer.find(params[:id])
    @developer = Developer.update(developers_params)
    redirect_to developer_path(@developer)
  end

  def destroy
    @developer = Developer.find(params[:id])
    @developer.destroy
    redirect_to developers_path
  end

  private

  def developers_params
    params.require(:developer).permit(:rating, :description)
  end
end
