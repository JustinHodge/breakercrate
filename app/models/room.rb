class Room < ApplicationRecord
  has_many :outlets, class_name: "outlet", foreign_key: "id", dependent: :destroy
end
