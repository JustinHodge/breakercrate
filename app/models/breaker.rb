class Breaker < ApplicationRecord
  has_many :outlet, class_name: "outlet", foreign_key: "id", dependent: :destroy
end
