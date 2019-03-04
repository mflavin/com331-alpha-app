class Week < ApplicationRecord
  validates :counting_week, presence: true
  validates :counting_week, uniqueness: true
  has_many :days
  accepts_nested_attributes_for :days
end
