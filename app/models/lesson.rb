class Lesson < ApplicationRecord
  belongs_to :notion
  belongs_to :teacher, foreign_key: "teacher_id", class_name: "User"
  belongs_to :student, foreign_key: "student_id", class_name: "User"
end
