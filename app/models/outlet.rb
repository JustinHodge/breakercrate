class Outlet < ApplicationRecord
  belongs_to :breaker, class_name: "breaker", foreign_key: "breaker_id"
  belongs_to :room, class_name: "room", foreign_key: "room_id"
end
