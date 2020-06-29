class RenameColumnUsers < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :answered_dilemmas, :userpoints
  end
end
