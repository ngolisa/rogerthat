class CreateNotions < ActiveRecord::Migration[5.2]
  def change
    create_table :notions do |t|
      t.string :name
      t.string :description
      t.string :video
      t.references :user, foreign_key: true
      t.string :photo

      t.timestamps
    end
  end
end
