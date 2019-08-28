class Lesson < ApplicationRecord
  belongs_to :notion
  belongs_to :teacher, foreign_key: "teacher_id", class_name: "User"
  belongs_to :student, foreign_key: "student_id", class_name: "User"

  has_many :reviews, dependent: :destroy

  scope :filter_by_student, ->(user_id) {where(student_id: user_id)}
  scope :filter_by_teacher, ->(user_id) {where(teacher_id: user_id)}
  # scope :filter_by_student_or_teacher, ->(user_id) {where(teacher_id: user_id || student_id: user_id)}
  scope :filter_by_student_or_teacher, ->(user_id) {where('teacher_id=? OR student_id=?', user_id, user_id)}

  scope :upcoming, ->{ where("DATE(date) > ?", Date.today)}
  scope :past, ->{ where("DATE(date) <= ?", Date.today)}

end
