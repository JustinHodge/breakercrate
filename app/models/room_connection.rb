class RoomConnection < ApplicationRecord
  belongs_to :room_a_id, class_name:"Room"
  belongs_to :room_b_id, class_name:"Room"
end
