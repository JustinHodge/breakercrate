require "application_system_test_case"

class OutletsTest < ApplicationSystemTestCase
  setup do
    @outlet = outlets(:one)
  end

  test "visiting the index" do
    visit outlets_url
    assert_selector "h1", text: "Outlets"
  end

  test "should create outlet" do
    visit outlets_url
    click_on "New outlet"

    fill_in "Breaker", with: @outlet.breaker_id
    fill_in "Integer", with: @outlet.integer
    check "Is gfci" if @outlet.is_gfci
    fill_in "Location x", with: @outlet.location_x
    fill_in "Location y", with: @outlet.location_y
    fill_in "Location z", with: @outlet.location_z
    fill_in "Room", with: @outlet.room_id
    fill_in "Type", with: @outlet.type
    click_on "Create Outlet"

    assert_text "Outlet was successfully created"
    click_on "Back"
  end

  test "should update Outlet" do
    visit outlet_url(@outlet)
    click_on "Edit this outlet", match: :first

    fill_in "Breaker", with: @outlet.breaker_id
    fill_in "Integer", with: @outlet.integer
    check "Is gfci" if @outlet.is_gfci
    fill_in "Location x", with: @outlet.location_x
    fill_in "Location y", with: @outlet.location_y
    fill_in "Location z", with: @outlet.location_z
    fill_in "Room", with: @outlet.room_id
    fill_in "Type", with: @outlet.type
    click_on "Update Outlet"

    assert_text "Outlet was successfully updated"
    click_on "Back"
  end

  test "should destroy Outlet" do
    visit outlet_url(@outlet)
    click_on "Destroy this outlet", match: :first

    assert_text "Outlet was successfully destroyed"
  end
end
