class DevelopersController < ApplicationController

  def index
    # @developers = Developer.all
    @developers = policy_scope(Developer).order(created_at: :desc)
  end

  def show
    @booking = Booking.new
    @developer = Developer.find(params[:id])
    authorize @developer
  end

  def new
    @developer = Developer.new
    authorize @developer
  end

  def create
    @developer = Developer.new(developers_params)
    @developer.user = current_user
    authorize @developer

    if @developer.save
      redirect_to developers_path
    else
      render :new
    end
  end

  def edit
    @developer = Developer.find(params[:id])
    authorize @developer
  end

  def update
    @developer = Developer.find(params[:id])
    @developer.update(:description)
    authorize @developer
    redirect_to developer_path(@developer)
  end

  def destroy
    @developer = Developer.find(params[:id])
    @developer.destroy
    authorize @developer
    redirect_to developers_path
  end

  private

  def developers_params
    params.require(:developer).permit(:rating, :description)
  end
end
