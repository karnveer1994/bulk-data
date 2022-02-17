class CreateBookingsItems < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings_items do |t|
      t.references :item, null: false, foreign_key: true, index: true, on_delete: :cascade
      t.references :booking, null: false, foreign_key: true, index: true, on_delete: :cascade
      t.integer :quantity

      t.timestamps
    end
  end
end
