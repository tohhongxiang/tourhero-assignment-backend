require "test_helper"

class TripsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trip = trips(:one)
  end

  test "should get index" do
    get trips_url, as: :json
    assert_response :success
  end

  test "should create trip" do
    assert_difference("Trip.count") do
      post trips_url, params: { trip: { cost: @trip.cost, country: @trip.country, cover_image: @trip.cover_image, currency: @trip.currency, description: @trip.description, duration_nights: @trip.duration_nights, group_size: @trip.group_size, name: @trip.name, start_date: @trip.start_date } }, as: :json
    end

    assert_response :created
  end

  test "should show trip" do
    get trip_url(@trip), as: :json
    assert_response :success
  end

  test "should update trip" do
    patch trip_url(@trip), params: { trip: { cost: @trip.cost, country: @trip.country, cover_image: @trip.cover_image, currency: @trip.currency, description: @trip.description, duration_nights: @trip.duration_nights, group_size: @trip.group_size, name: @trip.name, start_date: @trip.start_date } }, as: :json
    assert_response :success
  end

  test "should destroy trip" do
    assert_difference("Trip.count", -1) do
      delete trip_url(@trip), as: :json
    end

    assert_response :no_content
  end
end
