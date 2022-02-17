class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :title
      t.string :description
      t.decimal :per_unit, precision: 20, scale: 2
      t.string :unit

      t.timestamps
    end
  end
end
