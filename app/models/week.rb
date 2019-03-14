class Week < ApplicationRecord
  validates :counting_week, presence: true
  validates :counting_week, uniqueness: true
  has_many :days
end
