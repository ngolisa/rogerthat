class ChangeAccepetedToAcceptedInLessons < ActiveRecord::Migration[5.2]
  def change
    rename_column :lessons, :accepeted, :accepted
  end
end
