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
```

## Running Development Server

```sh
rails s
```

Server runs on `http://localhost:5000`

# Notes

```sh
rails g scaffold trip name:string cost:integer currency:string cover_image:string country:string start_date:date duration_nights:integer group_size:integer description:text
```

