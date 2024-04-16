class AddIncludedToTrips < ActiveRecord::Migration[7.1]
  def change
    add_column :trips, :included, :text, :default => ""
  end
end
