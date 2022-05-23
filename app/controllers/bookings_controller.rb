class BookingsController < ApplicationController
  def index
    @developer = Developer.find_by(user_id: current_user.id)
    @bookings = Booking.where(user_id: current_user.id)
    @booked = Booking.where(developer_id: @developer.id)
  end

  def accept
  end

  def reject
  end

  def create
    @booking = Booking.new(bookings_params)
    @developer = Developer.find(params[:developer_id])
    @booking.developer = @developer
    @booking.user = current_user
    @booking.save

    redirect_to bookings_path
  end

  def destroy
  end

  def bookings_params
    params.require(:booking).permit(:job)
  end
end
