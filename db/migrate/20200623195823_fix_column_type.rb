class FixColumnType < ActiveRecord::Migration[6.0]
  def change
    rename_column :dilemmas, :type, :category
  end
end
