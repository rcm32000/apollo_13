class SpaceMission < ApplicationRecord
  validates_presence_of :title, :trip_length
  has_many :astronauts
end
