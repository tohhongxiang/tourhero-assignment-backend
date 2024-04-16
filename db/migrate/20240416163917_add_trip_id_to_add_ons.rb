class AddTripIdToAddOns < ActiveRecord::Migration[7.1]
  def change
    add_column :add_ons, :trip_id, :integer
    add_index :add_ons, :trip_id
  end
end
