class Trip < ApplicationRecord
    has_many :add_ons, dependent: :delete_all # cascade delete

    def as_json(options = {})
        super(include: { add_ons: {  } })
    end
end
