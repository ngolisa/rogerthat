class Lesson < ApplicationRecord
  belongs_to :notion
  has_one :review
  belongs_to :teacher, foreign_key: "teacher_id", class_name: "User"
  belongs_to :student, foreign_key: "student_id", class_name: "User"

  scope :filter_by_student, ->(user_id) {where(student_id: user_id)}
  scope :filter_by_date, ->{ where("DATE(date) > ?", Date.today)}

end
