=begin
As a visitor,
When I visit '/astronauts'
I see the average age of all astronauts.
(e.g. "Average Age: 34")
=end

require 'rails_helper'
describe '/astronauts' do
  it 'should show average age of astronauts' do
    mission = SpaceMission.create(title: 'Apollo 8', trip_length: 100)
    astronaut1 = mission.astronauts.create(name: 'Neil Armstrong', age: 40, job: 'Commander')
    astronaut2 = mission.astronauts.create(name: 'Buzz Aldrin', age: 30, job: 'Navigator')

    expect(Astronaut.avg_age).to eq(35)
  end

  it 'should show a total time in space' do
    mission1 = SpaceMission.create(title: 'Apollo 8', trip_length: 100)
    mission1 = SpaceMission.create(title: 'Apollo 8', trip_length: 100)
    astronaut1 = mission1.astronauts.create(name: 'Neil Armstrong', age: 40, job: 'Commander')
    astronaut2 = mission1.astronauts.create(name: 'Buzz Aldrin', age: 30, job: 'Navigator')
    mission2 = SpaceMission.create(title: 'Apollo 13', trip_length: 20)
    astronaut3 = mission2.astronauts.create(name: 'Jim Lovell', age: 40, job: 'Commander')
    astronaut2 = mission2.astronauts.create(name: 'Buzz Aldrin', age: 30, job: 'Navigator')
    mission3 = SpaceMission.create(title: 'Apollo 10', trip_length: 50)
    astronaut4 = mission3.astronauts.create(name: 'Thomas Stafford', age: 40, job: 'Commander')
    astronaut3 = mission3.astronauts.create(name: 'Jim Lovell', age: 30, job: 'Navigator')

    expect(astronaut1.total_space).to eq(100)
    expect(astronaut2.total_space).to eq(120)
    expect(astronaut3.total_space).to eq(70)
    expect(astronaut4.total_space).to eq(50)
  end
end
