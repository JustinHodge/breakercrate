class MapController < ApplicationController
  def index
    @rooms = Room.all
    @outlets = Outlet.all
    @room_connections = RoomConnection.all
  end
end
