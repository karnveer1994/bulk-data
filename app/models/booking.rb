class Booking < ApplicationRecord
  belongs_to :customer
  belongs_to :service

  has_many :bookings_items

  accepts_nested_attributes_for :bookings_items, allow_destroy: true

  enum status: { active: 1, cancelled: 2, completed: 3 }
end
