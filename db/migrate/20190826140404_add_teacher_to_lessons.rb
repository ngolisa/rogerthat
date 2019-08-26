class AddTeacherToLessons < ActiveRecord::Migration[5.2]
  def change
    add_reference :lessons, :teacher
    add_foreign_key :lessons, :users, column: :teacher_id, on_delete: :restrict
  end
end
