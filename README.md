###  Personal Evaluation
- I felt really good about this challenge and surprised myself with moving through it quicker than previous ICs - yes, this is the first IC for Mod2 but compared to Mod1 ICs this felt much better.
- I'm really trying to break bad habits and start with writing the tests first and was able to successfully start with the tests first due to the newly placed passive-aggressive sticky note on my monitor.
- I hit a roadblock in User Story 3, but cleared it by breaking the story up in to two separate tests.
- Decided to use a class method in the Student model for User Story 4 to calculate the average student age.  
- For this IC, I moved the slowest when creating the views, but overall I was pleased with my pace, committing to writing tests first and allowing the tests to drive the development.


# Hogwarts Again

## Setup instructions:
  - Fork this repo
  - `git clone <repo>`
  - `cd <repo_name>`
  - `bundle install`
  - `rails db:{create,migrate,seed}`

When you run rspec, you should have 12 failing tests to start.  

###  Overview

We will be creating an application to track Professors and Students at the Hogwarts School of Witchcraft and Wizardry from the Harry Potter book series (you do not need any knowledge of Harry Potter to complete this challenge).


### User Stories

```
User Story 1 of 4
As a visitor,
When I visit '/professors',
I see a list of professors with the following information:
-Name
-Age
-Specialty
(e.g. "Name: Minerva McGonagall, Age: 204, Specialty: Transfiguration")
```
```
User Story 2 of 4
As a visitor,
When I visit '/professors/:id'
I see a list of the names of the students the professors have.
(e.g. "Neville Longbottom"
     "Hermione Granger"
     "Luna Lovegood")
```
```
User Story 3 of 4
As a visitor,
When I visit '/students'
I see a list of students and the number of professors each student has.
(e.g. "Draco Malfoy: 5"
     "Nymphadora Tonks: 10")
```
```
User Story 4 of 4
As a visitor,
When I visit '/professors/:id'
I see the average age of all students for that professor.
(e.g. "Average Age: 14.5")
```
---
### Extension
```
User Story Extension
On all index pages, all information is listed alphabetically.
