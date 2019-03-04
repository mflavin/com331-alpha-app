class Day < ApplicationRecord
  belongs_to :weeks
  has_one :week
  has_many :weights
end
