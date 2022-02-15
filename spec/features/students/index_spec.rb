require 'rails_helper'

 RSpec.describe 'students index page' do
   it "can display a list of all students" do
     dumbledore = Professor.create!(name: 'Albus Dumbledore', age: 319, specialty: 'Being old and super chill')
     snape = Professor.create!(name: 'Siverus Snape', age: 55, specialty: 'Dark arts and snake stuff')
     mcgonagall = Professor.create!(name: 'Minerva McGonagall', age: 155, specialty: 'Agreeable and potions')

     hermione = Student.create!(name: 'Hermione Granger', age: 15, house: 'Griffindor')
     harry = Student.create!(name: 'Harry Potter', age: 16, house: 'Griffindor')
     macmillian = Student.create!(name: 'Ernie Macmillan', age: 17, house: 'Hufflepuff')

     ProfessorStudent.create(student_id: hermione.id, professor_id: dumbledore.id)
     ProfessorStudent.create(student_id: hermione.id, professor_id: snape.id)
     ProfessorStudent.create(student_id: hermione.id, professor_id: mcgonagall.id)
     ProfessorStudent.create(student_id: harry.id, professor_id: dumbledore.id)
     ProfessorStudent.create(student_id: harry.id, professor_id: snape.id)
     ProfessorStudent.create(student_id: harry.id, professor_id: mcgonagall.id)
     ProfessorStudent.create(student_id: macmillian.id, professor_id: dumbledore.id)
     ProfessorStudent.create(student_id: macmillian.id, professor_id: mcgonagall.id)

     visit '/students'

     expect(page).to have_content(hermione.name)
     expect(page).to have_content(harry.name)
     expect(page).to have_content(macmillian.name)
   end

   it "can display the number of professors each student has" do

     dumbledore = Professor.create!(name: 'Albus Dumbledore', age: 319, specialty: 'Being old and super chill')
     snape = Professor.create!(name: 'Siverus Snape', age: 55, specialty: 'Dark arts and snake stuff')
     mcgonagall = Professor.create!(name: 'Minerva McGonagall', age: 155, specialty: 'Agreeable and potions')

     hermione = Student.create!(name: 'Hermione Granger', age: 15, house: 'Griffindor')
     harry = Student.create!(name: 'Harry Potter', age: 16, house: 'Griffindor')
     macmillian = Student.create!(name: 'Ernie Macmillan', age: 17, house: 'Hufflepuff')

     ProfessorStudent.create(student_id: hermione.id, professor_id: dumbledore.id)
     ProfessorStudent.create(student_id: hermione.id, professor_id: snape.id)
     ProfessorStudent.create(student_id: hermione.id, professor_id: mcgonagall.id)
     ProfessorStudent.create(student_id: harry.id, professor_id: dumbledore.id)
     ProfessorStudent.create(student_id: harry.id, professor_id: snape.id)
     ProfessorStudent.create(student_id: harry.id, professor_id: mcgonagall.id)
     ProfessorStudent.create(student_id: macmillian.id, professor_id: dumbledore.id)
     ProfessorStudent.create(student_id: macmillian.id, professor_id: mcgonagall.id)

     visit '/students'
     # save_and_open_page

     expect(page).to have_content(2)
   end

 end
