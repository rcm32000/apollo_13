=begin
As a visitor,
When I visit '/astronauts'
I see a list of astronauts with the following info:
 - Name
 - Age
 - Job
 (e.g. "Name: Neil Armstrong" Age: 37 Job: Commander")
=end

require 'rails_helper'
describe '/astronauts' do
  it 'should show list of astronauts' do
    mission = SpaceMission.create(title: 'Apollo 8', trip_length: 100)
    astronaut1 = mission.astronauts.create(name: 'Neil Armstrong', age: 37, job: 'Commander')
    astronaut2 = mission.astronauts.create(name: 'Buzz Aldrin', age: 35, job: 'Navigator')

    visit '/astronauts'

    expect(current_page).to have_content(astronaut1.name)
    expect(current_page).to have_content(astronaut1.age)
    expect(current_page).to have_content(astronaut1.job)
    expect(current_page).to have_content(astronaut2.name)
    expect(current_page).to have_content(astronaut2.age)
    expect(current_page).to have_content(astronaut2.job)
  end
end
