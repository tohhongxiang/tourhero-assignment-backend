class AddOn < ApplicationRecord
    belongs_to :trip

    validates :name, uniqueness: { scope: [:trip_id, :name] } # we want (trip_id, name) to be unique
    validates :spots_remaining, comparison: { greater_than_or_equal_to: 0 }

    def book
        self.update(spots_remaining: self.spots_remaining - 1)
    end
end
