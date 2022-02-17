class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :mobile
      t.string :email
      t.text :address
      t.string :zip_code
      t.text :remarks

      t.timestamps
    end
  end
end
