require 'rails_helper'

RSpec.describe 'students index page' do
   describe 'user story 3' do
     it "can display a list of all students" do
       snape = Professor.create(name: "Severus Snape", age: 45, specialty: "Potions")
       hagarid = Professor.create(name: "Rubeus Hagrid", age: 38 , specialty: "Care of Magical Creatures")
       lupin = Professor.create(name: "Remus Lupin", age: 49 , specialty: "Defense Against The Dark Arts")

       harry = Student.create(name: "Harry Potter" , age: 11 , house: "Gryffindor" )
       malfoy = Student.create(name: "Draco Malfoy" , age: 12 , house: "Slytherin" )
       longbottom = Student.create(name: "Neville Longbottom" , age: 11 , house: "Gryffindor" )

       ProfessorStudent.create(student_id: harry.id, professor_id: snape.id)
       ProfessorStudent.create(student_id: harry.id, professor_id: hagarid.id)
       ProfessorStudent.create(student_id: harry.id, professor_id: lupin.id)
       ProfessorStudent.create(student_id: malfoy.id, professor_id: hagarid.id)
       ProfessorStudent.create(student_id: malfoy.id, professor_id: lupin.id)
       ProfessorStudent.create(student_id: longbottom.id, professor_id: snape.id)

       visit '/students'

       expect(page).to have_content(harry.name)
       expect(page).to have_content(malfoy.name)
       expect(page).to have_content(longbottom.name)
     end

     it "can display the number of professors each student has" do

       snape = Professor.create(name: "Severus Snape", age: 45, specialty: "Potions")
       hagarid = Professor.create(name: "Rubeus Hagrid", age: 38 , specialty: "Care of Magical Creatures")
       lupin = Professor.create(name: "Remus Lupin", age: 49 , specialty: "Defense Against The Dark Arts")

       harry = Student.create(name: "Harry Potter" , age: 11 , house: "Gryffindor" )
       malfoy = Student.create(name: "Draco Malfoy" , age: 12 , house: "Slytherin" )
       longbottom = Student.create(name: "Neville Longbottom" , age: 11 , house: "Gryffindor" )

       ProfessorStudent.create(student_id: harry.id, professor_id: snape.id)
       ProfessorStudent.create(student_id: harry.id, professor_id: hagarid.id)
       ProfessorStudent.create(student_id: harry.id, professor_id: lupin.id)
       ProfessorStudent.create(student_id: malfoy.id, professor_id: hagarid.id)
       ProfessorStudent.create(student_id: malfoy.id, professor_id: lupin.id)
       ProfessorStudent.create(student_id: longbottom.id, professor_id: snape.id)

       visit '/students'
       # save_and_open_page

       expect(page).to have_content(3)
     end
   end
end
