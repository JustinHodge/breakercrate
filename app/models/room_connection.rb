class RoomConnection < ApplicationRecord
  belongs_to :room_a_id
  belongs_to :room_b_id
end
