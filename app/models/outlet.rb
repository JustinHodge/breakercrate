class Outlet < ApplicationRecord
  belongs_to :breaker
  belongs_to :room
end
