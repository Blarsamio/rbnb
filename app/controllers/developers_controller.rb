class DevelopersController < ApplicationController
  def index
    if params[:query].present?
      sql_query = "language ILIKE :query"
      @developers = Developer.where(sql_query, query: "%#{params[:query]}%")
    else
      @developers = Developer.all
    end
    if current_user
      if @developers.find_by(user_id: current_user.id)
        @mydev = @developers.find_by(user_id: current_user.id)
      end
    end
  end

  def show
    if current_user
      @booking = Booking.new
      @developer = Developer.find(params[:id])
    else
      redirect_to new_user_session_path
    end
  end

  def new
    if current_user
      @developer = Developer.new
    else
      redirect_to new_user_session_path
    end
  end

  def create
    @developer = Developer.new(developers_params)
    @developer.user = current_user
    @developer.language = params[:language]
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
    @developer.update(developers_params)
  end

  private

  def developers_params
    params.require(:developer).permit(:rating, :description, :first_name, :last_name, :language, :photo, :address)
  end
end
