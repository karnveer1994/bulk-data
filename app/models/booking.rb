class Booking < ApplicationRecord
  belongs_to :customer
  belongs_to :service

  has_many :bookings_items

  accepts_nested_attributes_for :bookings_items, allow_destroy: true

  enum status: { active: 1, cancelled: 2, completed: 3 }

  def self.filter_bookings
    sql = "
      select distinct
        id,
        start_date,
        end_date,
        status,
        start_time,
        end_time,
        services.name as service_name,
        services.id as service_id,
        customers.name as customer_name,
        customers.id as customer_id,
        count(bookings_items.id) as total_items
      from
        bookings
      inner join
        services on services.id = bookings.service_id
      inner join
        customers on customers.id = bookings.customers_id
      left join
        bookings_items on bookings_items.booking_id = bookings.id
      group by
        bookings.id
      order by
        start_date;
    "

    result = Booking.find_by_sql([sql])
  end
end
