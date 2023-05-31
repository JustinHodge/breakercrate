require "application_system_test_case"

class RoomConnectionsTest < ApplicationSystemTestCase
  setup do
    @room_connection = room_connections(:one)
  end

  test "visiting the index" do
    visit room_connections_url
    assert_selector "h1", text: "Room connections"
  end

  test "should create room connection" do
    visit room_connections_url
    click_on "New room connection"

    fill_in "Room a id", with: @room_connection.room_a_id_id
    fill_in "Room a x position", with: @room_connection.room_a_x_position
    fill_in "Room a y position", with: @room_connection.room_a_y_position
    fill_in "Room b id", with: @room_connection.room_b_id_id
    fill_in "Room b x postion", with: @room_connection.room_b_x_postion
    fill_in "Room b y position", with: @room_connection.room_b_y_position
    click_on "Create Room connection"

    assert_text "Room connection was successfully created"
    click_on "Back"
  end

  test "should update Room connection" do
    visit room_connection_url(@room_connection)
    click_on "Edit this room connection", match: :first

    fill_in "Room a id", with: @room_connection.room_a_id_id
    fill_in "Room a x position", with: @room_connection.room_a_x_position
    fill_in "Room a y position", with: @room_connection.room_a_y_position
    fill_in "Room b id", with: @room_connection.room_b_id_id
    fill_in "Room b x postion", with: @room_connection.room_b_x_postion
    fill_in "Room b y position", with: @room_connection.room_b_y_position
    click_on "Update Room connection"

    assert_text "Room connection was successfully updated"
    click_on "Back"
  end

  test "should destroy Room connection" do
    visit room_connection_url(@room_connection)
    click_on "Destroy this room connection", match: :first

    assert_text "Room connection was successfully destroyed"
  end
end
