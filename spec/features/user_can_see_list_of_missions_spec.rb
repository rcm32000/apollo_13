=begin
As a visitor,
When I visit '/astronauts'
I see a list of the space missions' in alphabetical order for each astronaut.
(e.g "Apollo 13"
     "Capricorn 4"
     "Gemini 7")
=end

require 'rails_helper'
describe '/astronauts' do
  it 'should show an alphabetical list of missions' do
    mission1 = SpaceMission.create(title: 'Apollo 8', trip_length: 100)
    astronaut1 = mission1.astronauts.create(name: 'Neil Armstrong', age: 40, job: 'Commander')
    astronaut2 = mission1.astronauts.create(name: 'Buzz Aldrin', age: 30, job: 'Navigator')
    mission2 = SpaceMission.create(title: 'Apollo 13', trip_length: 20)
    astronaut3 = mission2.astronauts.create(name: 'Jim Lovell', age: 40, job: 'Commander')
    astronaut2 = mission2.astronauts.create(name: 'Buzz Aldrin', age: 30, job: 'Navigator')
    mission3 = SpaceMission.create(title: 'Apollo 10', trip_length: 50)
    astronaut4 = mission3.astronauts.create(name: 'Thomas Stafford', age: 40, job: 'Commander')
    astronaut3 = mission3.astronauts.create(name: 'Jim Lovell', age: 30, job: 'Navigator')

    visit '/astronauts'

    expect(current_page).to have_content(mission1.title)
    expect(current_page).to have_content(mission2.title)
    expect(current_page).to have_content(mission3.title)
  end
end
