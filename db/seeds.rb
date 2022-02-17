# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#

# Seed customer data
Customer.find_or_create_by(name: 'John Lindel', email: 'jlindel@example.com', mobile: '07569841236', address: '45, street road', zip_code: '452001', remarks: 'related marks')
Customer.find_or_create_by(name: 'John Anderrson', email: 'jandersson@example.com', mobile: '07569841489', address: '98, street road', zip_code: '452005', remarks: 'related marks 1')
Customer.find_or_create_by(name: 'Karlsson kathy', email: 'karlsson@example.com', mobile: '07569841845', address: '26, street road', zip_code: '452009', remarks: 'related marks 2')
Customer.find_or_create_by(name: 'Erica Lindel', email: 'erica@example.com', mobile: '07569841412', address: '85, street road', zip_code: '452010', remarks: 'related marks 3')
Customer.find_or_create_by(name: 'Gorge Bush', email: 'gorge@example.com', mobile: '07569841895', address: '42, street road', zip_code: '452007', remarks: 'related marks 4')
Customer.find_or_create_by(name: 'Katy Maria', email: 'katy@example.com', mobile: '07569841012', address: '78, street road', zip_code: '452002', remarks: 'related marks 5')

# Seed service data
Service.find_or_create_by(title: 'Service1', description: 'Related service 1')
Service.find_or_create_by(title: 'Service2', description: 'Related service 2')
Service.find_or_create_by(title: 'Service3', description: 'Related service 3')
Service.find_or_create_by(title: 'Service4', description: 'Related service 4')
Service.find_or_create_by(title: 'Service5', description: 'Related service 5')

# Seed items data
Item.find_or_create_by(title: 'Item1', description: 'related items1', unit: 'st', per_unit: 105)
Item.find_or_create_by(title: 'Item2', description: 'related items2', unit: 'kl', per_unit: 750)
Item.find_or_create_by(title: 'Item3', description: 'related items3', unit: 'km', per_unit: 23)
Item.find_or_create_by(title: 'Item4', description: 'related items4', unit: 'ml', per_unit: 108.32)
Item.find_or_create_by(title: 'Item5', description: 'related items5', unit: 'l', per_unit: 56.85)

# Seed bookings data
bookings_data = []
Customer.all.each do |customer|
  Service.all.each do |service|
    bookings_data << { customer_id: customer.id, service_id: service.id, start_date: Date.today, start_time: DateTime.current, status: 1, end_date: Date.today, end_time: (DateTime.current + 8.hours), created_at: Time.current, updated_at: Time.current }
  end
end
Booking.insert_all(bookings_data)

# Assign items to bookings
bookings_items = []
Booking.all.each do |booking|
  Item.all.each_with_index do |item, index|
    bookings_items << { item_id: item.id, booking_id: booking.id, quantity: index + 1, created_at: Time.current, updated_at: Time.current }
  end
end
BookingsItem.insert_all(bookings_items)