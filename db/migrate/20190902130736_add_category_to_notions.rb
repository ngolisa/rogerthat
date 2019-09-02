class AddCategoryToNotions < ActiveRecord::Migration[5.2]
  def change
    add_reference :notions, :category, foreign_key: true
  end
end
