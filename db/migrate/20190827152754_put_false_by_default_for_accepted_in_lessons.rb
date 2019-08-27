class PutFalseByDefaultForAcceptedInLessons < ActiveRecord::Migration[5.2]
  def change
    remove_column :lessons, :accepted
    remove_column :lessons, :complete
    add_column :lessons, :status, :string
  end
end
