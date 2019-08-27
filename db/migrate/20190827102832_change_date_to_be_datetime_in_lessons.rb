class ChangeDateToBeDatetimeInLessons < ActiveRecord::Migration[5.2]
  def change
      change_column :lessons, :date, :datetime
  end
end
