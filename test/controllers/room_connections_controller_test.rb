require "test_helper"

class RoomConnectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @room_connection = room_connections(:one)
  end

  test "should get index" do
    get room_connections_url
    assert_response :success
  end

  test "should get new" do
    get new_room_connection_url
    assert_response :success
  end

  test "should create room_connection" do
    assert_difference("RoomConnection.count") do
      post room_connections_url, params: { room_connection: { room_a_id_id: @room_connection.room_a_id_id, room_a_x_position: @room_connection.room_a_x_position, room_a_y_position: @room_connection.room_a_y_position, room_b_id_id: @room_connection.room_b_id_id, room_b_x_postion: @room_connection.room_b_x_postion, room_b_y_position: @room_connection.room_b_y_position } }
    end

    assert_redirected_to room_connection_url(RoomConnection.last)
  end

  test "should show room_connection" do
    get room_connection_url(@room_connection)
    assert_response :success
  end

  test "should get edit" do
    get edit_room_connection_url(@room_connection)
    assert_response :success
  end

  test "should update room_connection" do
    patch room_connection_url(@room_connection), params: { room_connection: { room_a_id_id: @room_connection.room_a_id_id, room_a_x_position: @room_connection.room_a_x_position, room_a_y_position: @room_connection.room_a_y_position, room_b_id_id: @room_connection.room_b_id_id, room_b_x_postion: @room_connection.room_b_x_postion, room_b_y_position: @room_connection.room_b_y_position } }
    assert_redirected_to room_connection_url(@room_connection)
  end

  test "should destroy room_connection" do
    assert_difference("RoomConnection.count", -1) do
      delete room_connection_url(@room_connection)
    end

    assert_redirected_to room_connections_url
  end
end
