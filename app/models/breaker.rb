class Breaker < ApplicationRecord
  has_many :outlet, dependent: :destroy
end
