require "test_helper"

class AddOnsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @add_on = add_ons(:one)
  end

  test "should get index" do
    get add_ons_url, as: :json
    assert_response :success
  end

  test "should create add_on" do
    assert_difference("AddOn.count") do
      post add_ons_url, params: { add_on: { cost: @add_on.cost, name: @add_on.name, spots_remaining: @add_on.spots_remaining, time_end: @add_on.time_end, time_start: @add_on.time_start } }, as: :json
    end

    assert_response :created
  end

  test "should show add_on" do
    get add_on_url(@add_on), as: :json
    assert_response :success
  end

  test "should update add_on" do
    patch add_on_url(@add_on), params: { add_on: { cost: @add_on.cost, name: @add_on.name, spots_remaining: @add_on.spots_remaining, time_end: @add_on.time_end, time_start: @add_on.time_start } }, as: :json
    assert_response :success
  end

  test "should destroy add_on" do
    assert_difference("AddOn.count", -1) do
      delete add_on_url(@add_on), as: :json
    end

    assert_response :no_content
  end
end
