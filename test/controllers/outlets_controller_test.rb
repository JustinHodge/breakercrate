require "test_helper"

class OutletsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @outlet = outlets(:one)
  end

  test "should get index" do
    get outlets_url
    assert_response :success
  end

  test "should get new" do
    get new_outlet_url
    assert_response :success
  end

  test "should create outlet" do
    assert_difference("Outlet.count") do
      post outlets_url, params: { outlet: { breaker_id: @outlet.breaker_id, integer: @outlet.integer, is_gfci: @outlet.is_gfci, location_x: @outlet.location_x, location_y: @outlet.location_y, location_z: @outlet.location_z, room_id: @outlet.room_id, type: @outlet.type } }
    end

    assert_redirected_to outlet_url(Outlet.last)
  end

  test "should show outlet" do
    get outlet_url(@outlet)
    assert_response :success
  end

  test "should get edit" do
    get edit_outlet_url(@outlet)
    assert_response :success
  end

  test "should update outlet" do
    patch outlet_url(@outlet), params: { outlet: { breaker_id: @outlet.breaker_id, integer: @outlet.integer, is_gfci: @outlet.is_gfci, location_x: @outlet.location_x, location_y: @outlet.location_y, location_z: @outlet.location_z, room_id: @outlet.room_id, type: @outlet.type } }
    assert_redirected_to outlet_url(@outlet)
  end

  test "should destroy outlet" do
    assert_difference("Outlet.count", -1) do
      delete outlet_url(@outlet)
    end

    assert_redirected_to outlets_url
  end
end
