# TourHero Assignment (Backend)

Version specifications
- `ruby 3.2.3 (2024-01-18 revision 52bb2ac0a6) [x64-mingw-ucrt]`
- `Rails 7.1.3.2`

# Setup

## Clone and Install Dependencies

```sh
git clone
cd tourhero-assignment-backend

bundle
rails db:migrate
rails db:seed
```

## Running Development Server

```sh
rails s
```

Server runs on `http://localhost:5000`

# Notes

```sh
rails g scaffold trip name:string cost:integer currency:string cover_image:string country:string start_date:date duration_nights:integer group_size:integer description:text included:text

rails g scaffold add_on name:string cost:integer spots_remaining:integer time_start:datetime time_end:datetime
```

Note: I want `included` to be a `string[]`, but SQLite does not support array types. Hence, I decided to just use `text`, and serialize the array


## Relationship between `Trip` and `AddOn`

```rb
class AddOn < ApplicationRecord
    belongs_to :trip
end

class Trip < ApplicationRecord
    has_many :add_ons
end
```

```sh
rails g migration add_trip_id_to_add_ons trip_id:integer:index
```

Within `app/controllers/add_ons_controller.rb` remember to add the `trip_id` parameter to the list of allowed parameters so that we can add the `add_on`

```rb
def add_on_params
    params.require(:add_on).permit(:name, :cost, :spots_remaining, :time_start, :time_end, :trip_id)
end
```

For add-ons, we also want the `(name, trip_id)` pair to be unique. In a single trip, we should not have add-ons with the same name. We can do this with a `validates` and `uniqueness` (within `app/models/add_on.rb`)

We also want to make sure that `spots_remaining >= 0`

```rb
class AddOn < ApplicationRecord
    belongs_to :trip

    validates :name, uniqueness: { scope: [:trip_id, :name] } # we want (name, trip_id) to be unique
    validates :spots_remaining, comparison: { greater_than_or_equal_to: 0 } # make sure that spots_remaining does not go below zero
end
```

