class Room < ApplicationRecord
  has_many :outlets, dependent: :destroy
end
