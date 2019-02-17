class Salary < ApplicationRecord
  validates :name, :salary_annual, presence: true
  validates :name, uniqueness: true
  validates :salary_annual, numericality: {greater_than_or_equal_to: 0.01}
  validates :salary_hourly, numericality: {greater_than_or_equal_to: 0.01}, allow_blank: true

  before_save :calc_hourly
  def calc_hourly
    hourly = self.salary_annual / 2080 # Divided by 2080, or hours worked in a year
    self.salary_hourly = hourly
  end
end
