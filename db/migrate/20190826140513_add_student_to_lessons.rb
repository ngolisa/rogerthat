class AddStudentToLessons < ActiveRecord::Migration[5.2]
  def change
    add_reference :lessons, :student
    add_foreign_key :lessons, :users, column: :student_id, on_delete: :restrict
  end
end
