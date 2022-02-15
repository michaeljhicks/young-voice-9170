require 'rails_helper'

 RSpec.describe 'professors index' do
  it "text" do

    dumbledore = Professor.create!(name: 'Albus Dumbledore', age: 319, specialty: 'Being old and super chill')
    snape = Professor.create!(name: 'Siverus Snape', age: 55, specialty: 'Dark arts and snake stuff')
    mcgonagall = Professor.create!(name: 'Minerva McGonagall', age: 155, specialty: 'Agreeable and potions')

    visit '/professors'

    expect(page).to have_content(dumbledore.name)
    expect(page).to have_content(dumbledore.age)
    expect(page).to have_content(dumbledore.specialty)
    expect(page).to have_content(snape.name)
    expect(page).to have_content(snape.age)
    expect(page).to have_content(snape.specialty)
    expect(page).to have_content(mcgonagall.name)
    expect(page).to have_content(mcgonagall.age)
    expect(page).to have_content(mcgonagall.specialty)

  end
 end
