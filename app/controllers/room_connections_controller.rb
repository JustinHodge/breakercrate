class RoomConnectionsController < ApplicationController
  before_action :set_room_connection, only: %i[ show edit update destroy ]

  # GET /room_connections or /room_connections.json
  def index
    @room_connections = RoomConnection.all
  end

  # GET /room_connections/1 or /room_connections/1.json
  def show
  end

  # GET /room_connections/new
  def new
    @room_connection = RoomConnection.new
  end

  # GET /room_connections/1/edit
  def edit
  end

  # POST /room_connections or /room_connections.json
  def create
    @room_connection = RoomConnection.new(room_connection_params)

    respond_to do |format|
      if @room_connection.save
        format.html { redirect_to room_connection_url(@room_connection), notice: "Room connection was successfully created." }
        format.json { render :show, status: :created, location: @room_connection }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @room_connection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /room_connections/1 or /room_connections/1.json
  def update
    respond_to do |format|
      if @room_connection.update(room_connection_params)
        format.html { redirect_to room_connection_url(@room_connection), notice: "Room connection was successfully updated." }
        format.json { render :show, status: :ok, location: @room_connection }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @room_connection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /room_connections/1 or /room_connections/1.json
  def destroy
    @room_connection.destroy

    respond_to do |format|
      format.html { redirect_to room_connections_url, notice: "Room connection was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_room_connection
      @room_connection = RoomConnection.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def room_connection_params
      params.require(:room_connection).permit(:room_a_id_id, :room_b_id_id, :room_a_x_position, :room_b_x_postion, :room_a_y_position, :room_b_y_position)
    end
end
