class Api::V1::BookingsController < ApplicationController

  def index
    bookings = Booking.filter_bookings
    render json: bookings
  end
end
