class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.date :date
      t.references :notion, foreign_key: true
      t.boolean :complete
      t.text :comment
      t.boolean :accepeted

      t.timestamps
    end
  end
end
