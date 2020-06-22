class AddAnsweredDilemmasToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :answered_dilemmas, :integer
  end
end
