class BookingsController < ApplicationController
  def index
    @developer = Developer.find_by(user_id: current_user.id)
    @bookings = Booking.where(user_id: current_user.id)
    if @developer
      @booked = Booking.where(developer_id: @developer.id).where(status: false)
      @accepted = @bookings.where(developer_id: @developer.id).where(status: true)
    end
  end

  def accept
    booking = Booking.find(params[:id])
    booking.status = true
    booking.save

    redirect_to bookings_path
  end

  def reject
    booking = Booking.find(params[:id])
    booking.destroy

    redirect_to bookings_path
  end

  def create
    @booking = Booking.new(bookings_params)
    @developer = Developer.find(params[:developer_id])
    @booking.developer = @developer
    @booking.user = current_user
    @booking.save

    redirect_to bookings_path
  end

  def destroy; end

  def bookings_params
    params.require(:booking).permit(:job)
  end
end
