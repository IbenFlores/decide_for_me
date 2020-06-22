class AddDefaultValueToAnsweredDilemmas < ActiveRecord::Migration[6.0]
  def change
    change_column_default :users, :answered_dilemmas, 0
  end
end
