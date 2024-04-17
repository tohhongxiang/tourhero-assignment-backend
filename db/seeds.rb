Trip.destroy_all

trip = Trip.create!({
    name: "A Wonderful Journey into the Beauty of Iceland",
    cost: 3590,
    currency: "EUR",
    cover_image: "https://assets.tourhero.com/091nb9apf6i4n7l3bye9bqjsm3i8",
    country: "Iceland",
    start_date: "Sep 14, 2024",
    duration_nights: 8,
    group_size: 4,
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam dignissim nulla et risus viverra, nec tincidunt velit gravida.",
    included: '[
        "All accomodations",
        "All activities described in the itinerary",
        "Bilingual guides during activities",
        "Transportation between activities and accommodation (except day 1 and day 9)",
        "Fully-guided hike around Fagradalsfjall",
        "Exciting photo opportunities",
        "Excursion transfers",
        "Shared occupancy in accommodation",
        "24/7 guest support"
    ]'
})

add_ons = AddOn.create!([{
    name: "SIM Card",
    cost: 15,
    spots_remaining: nil,
    time_start: nil,
    time_end: nil,
    trip_id: trip.id
}, {
    name: "Visit to cultural house",
    cost: 30,
    spots_remaining: 3,
    time_start: "Sep 15, 2024 10:00:00",
    time_end: "Sep 15, 2024 13:00:00",
    trip_id: trip.id
}, {
    name: "Visit to museum",
    cost: 15,
    spots_remaining: 3,
    time_start: "Sep 15, 2024 15:00:00",
    time_end: "Sep 15, 2024 18:00:00",
    trip_id: trip.id
}, {
    name: "Picturesque lunch",
    cost: 25,
    spots_remaining: 3,
    time_start: "Sep 15, 2024 12:00:00",
    time_end: "Sep 15, 2024 16:00:00",
    trip_id: trip.id
}])

trip = Trip.create!({
    name: "A Week in Tokyo",
    cost: 1700,
    currency: "¥",
    cover_image: "https://assets.tourhero.com/txyke9osloaw4hng4qkx5kzldtjk",
    country: "Japan",
    start_date: "May 17, 2024",
    duration_nights: 6,
    group_size: 50,
    description: "Duis faucibus tempor dolor, nec blandit tortor ullamcorper et. Aliquam erat volutpat. Duis lacinia neque at ornare molestie. Morbi dictum sem et sollicitudin tincidunt. Praesent id libero justo. In non auctor libero. Etiam varius lorem enim, a eleifend turpis tristique non. Cras tristique, justo fermentum mattis vulputate, elit sapien placerat felis, et euismod magna tellus vitae ipsum. Quisque nec fringilla purus, sit amet viverra turpis. Fusce dictum pellentesque scelerisque. Vivamus dignissim pharetra enim eu rhoncus. Phasellus tincidunt et velit quis ultrices. Fusce in magna eu odio cursus pulvinar at eu massa. Morbi finibus imperdiet quam, non viverra quam vestibulum vel.",
    included: '[
        "All accomodations",
        "All activities described in the itinerary",
        "Bilingual guides during activities",
        "Breakfast, lunch and dinner provided on all days (except first and last)",
        "Excursion transfers",
        "Shared occupancy in accommodation",
        "24/7 guest support"
    ]'
})

trip = Trip.create!({
    name: "Norwegian Getaway",
    cost: 2890,
    currency: "NOK",
    cover_image: "https://assets.tourhero.com/yqx83ok1h0sop4otaoq8huk25noc",
    country: "Norway",
    start_date: "June 18, 2024",
    duration_nights: 13,
    group_size: 12,
    description: "Aenean sem sapien, lacinia id dolor et, condimentum ullamcorper diam. Sed molestie quam ante, ac egestas lorem scelerisque eu. Donec lobortis dapibus dolor, quis fringilla est venenatis eu. Phasellus mi arcu, elementum ut viverra sit amet, lacinia vel nunc. Donec porta diam at pulvinar efficitur. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec aliquam consequat ultricies. Etiam bibendum libero purus, quis condimentum augue volutpat sed. Nunc tincidunt mi ac metus faucibus, vitae tristique tellus pellentesque. Suspendisse vitae orci tellus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris malesuada tortor et quam feugiat placerat. Suspendisse in fringilla ipsum. Phasellus mi lectus, convallis sed sapien et, fermentum porttitor turpis. Fusce interdum porttitor justo, ac lobortis purus. Praesent feugiat luctus ex ac elementum.",
    included: '[
        "All accomodations",
        "All activities described in the itinerary",
        "Northern Lights hunting on the final night",
        "Food fully provided",
        "Excursion transfers",
        "Shared occupancy in accommodation",
        "24/7 guest support"
    ]'
})

add_ons = AddOn.create!([{
    name: "Ski trip in Fjellheisen",
    cost: 150,
    spots_remaining: 0,
    time_start: "Jun 19, 2024 10:00:00",
    time_end: "Jun 19, 2024 23:00:00",
    trip_id: trip.id
}])