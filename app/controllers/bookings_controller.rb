class BookingsController < ApplicationController

  def index
    @bookings = Booking.where :user_id == current_user
    @bookings = policy_scope(Booking).order(created_at: :desc)
  end

  def create
    @computer = Computer.find(params[:computer_id])
    @booking = Booking.new(booking_params)
    authorize @booking
    @booking.computer = @computer
    @booking.user = current_user
    if @booking.save
      redirect_to computer_bookings_path(@computer)
    else
      render 'computers/show'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_time)
  end

end
