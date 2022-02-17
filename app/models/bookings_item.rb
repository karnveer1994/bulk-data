class BookingsItem < ApplicationRecord
  belongs_to :item
  belongs_to :booking
end
