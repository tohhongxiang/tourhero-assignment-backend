class CreateTrips < ActiveRecord::Migration[7.1]
  def change
    create_table :trips do |t|
      t.string :name
      t.integer :cost
      t.string :currency
      t.string :cover_image
      t.string :country
      t.date :start_date
      t.integer :duration_nights
      t.integer :group_size
      t.text :description

      t.timestamps
    end
  end
end
