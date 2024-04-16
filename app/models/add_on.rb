class AddOn < ApplicationRecord
    belongs_to :trip

    validates :name, uniqueness: { scope: [:trip_id, :name] } # we want (trip_id, name) to be unique
end
