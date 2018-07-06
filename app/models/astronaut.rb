class Astronaut < ApplicationRecord
  validates_presence_of :name, :age, :job
  has_many :space_missions

  def self.avg_age
    average(:age)
  end

  def self.total_space
    sum(:trip_length)
  end
end
