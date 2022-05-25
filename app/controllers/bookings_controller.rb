class BookingsController < ApplicationController
  def index
    @developer = Developer.find_by(user_id: current_user.id)
    @bookings = policy_scope(Booking).where(user_id: current_user.id)
    @booked = Booking.where(developer_id: @developer.id).where(status: false)
    if @booked.nil?
      render :index
    end
    @accepted = @bookings.where(status: true)
  end

  def accept
    booking = Booking.find(params[:id])
    booking.status = true
    authorize(booking)
    booking.save

    redirect_to bookings_path
  end

  def reject
  end

  def create
    @booking = Booking.new(bookings_params)
    @developer = Developer.find(params[:developer_id])
    @booking.developer = @developer
    @booking.user = current_user
    @booking.save!
    authorize(@booking)

    redirect_to bookings_path
  end

  def destroy
  end

  def bookings_params
    params.require(:booking).permit(:job)
  end
end
