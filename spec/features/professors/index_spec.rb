require 'rails_helper'

 RSpec.describe 'professors index'
  it "text" do

    dumbledore = Professor.create!(name: 'Albus Dumbledore', age: 319, specialty: 'Being old and super chill')
    snape = Professor.create!(name: 'Siverus Snape', age: 55, specialty: 'Dark arts and snake stuff')
    mcgonagall = Professor.create!(name: 'Minerva McGonagall', age: 155, specialty: 'Agreeable and potions')

    visit '/professors'

    expect(page).to have_content(dumbledore.name)
    expect(page).to have_content(dumbledore.age)
    expect(page).to have_content(dumbledore.speciality)
    expect(page).to have_content(snape.speciality)
    expect(page).to have_content(snape.speciality)
    expect(page).to have_content(snape.speciality)
    expect(page).to have_content(mcgonagall.speciality)
    expect(page).to have_content(mcgonagall.speciality)
    expect(page).to have_content(mcgonagall.speciality)

  end
 end
