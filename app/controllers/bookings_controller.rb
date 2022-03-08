class BookingsController < ApplicationController

  def index
    @user = current_user
    @bookings = policy_scope(Booking).order(created_at: :desc)
    @bookings = @user.bookings
  end

  def new
    @booking = Booking.new
  end

  def create
    @computer = Computer.find(params[:computer_id])
    @booking = Booking.new(booking_params)
    authorize @booking
    @booking.computer = @computer
    @booking.user = current_user
    if @booking.save
      redirect_to computer_bookings_path
    else
      render 'computers/show'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_time)
  end

end
