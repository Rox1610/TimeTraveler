class BookingsController < ApplicationController
  before_action :set_booking, only: %i[show edit update destroy]
  before_action :set_era, only: :new

  def index
    @bookings = Booking.where(user_id: current_user.id)
  end

  def show
  end

  def new
    @era_owner = @era.user
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.era = Era.find(params[:era_id])
    @booking.user = current_user
    if @booking.save
      redirect_to eras_path, notice: 'Request done'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @booking.update(booking_params)
      redirect_to booking_path(@booking), notice: 'Booking updated.'
    else
      render :edit
    end
  end

  def confirm_status
    set_booking
    @booking.update(status_params)
    redirect_to booking_path(@booking)
  end

  def destroy
    @booking.destroy
    redirect_to profile_path, notice: 'Booking was canceled.'
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_era
    @era = Era.find(params[:era_id])
  end

  def booking_params
    params.require(:booking).permit(:status, :start_date, :end_date, :comment)
  end

  def status_params
    params.require(:booking).permit(:status)
  end
end
