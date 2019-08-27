class PutPendingByDefaultInLessons < ActiveRecord::Migration[5.2]
  def change
    change_column :lessons, :status, :string, :default => 'pending'
  end
end
