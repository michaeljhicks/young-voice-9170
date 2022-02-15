class Student <ApplicationRecord
  has_many :professor_students
  has_many :professors, through: :professor_students
  validates_presence_of :name, presence: true
  validates_presence_of :age, presence: true
  validates_presence_of :house, presence: true
end
