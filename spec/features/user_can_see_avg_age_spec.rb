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

    visit '/astronauts'

    expect(current_page).to have_content(Astronaut.avg_age)
  end
end
