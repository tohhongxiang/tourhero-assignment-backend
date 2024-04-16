class CreateAddOns < ActiveRecord::Migration[7.1]
  def change
    create_table :add_ons do |t|
      t.string :name
      t.integer :cost
      t.integer :spots_remaining
      t.datetime :time_start
      t.datetime :time_end

      t.timestamps
    end
  end
end
