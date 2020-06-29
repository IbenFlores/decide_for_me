class AddExpiredAtToDilemma < ActiveRecord::Migration[6.0]
  def change
    add_column :dilemmas, :expired_at, :datetime
  end
end
