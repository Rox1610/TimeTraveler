class ProfilesController < ApplicationController
  def show
    @bookings = current_user.bookings
    @eras = current_user.eras
    @pending_bookings = Booking.where(era: current_user.eras)
  end
end
