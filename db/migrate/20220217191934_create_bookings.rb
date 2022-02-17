class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.references :customer, null: false, foreign_key: true, index: true, on_delete: :cascade
      t.references :service, null: false, foreign_key: true, index: true, on_delete: :cascade
      t.date :start_date
      t.date :end_date
      t.datetime :start_time
      t.datetime :end_time
      t.text :notes
      t.integer :status

      t.timestamps
    end
  end
end
