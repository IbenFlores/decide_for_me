class CreateJoinTableOptionsUsers < ActiveRecord::Migration[6.0]
  def change
    create_join_table :options, :users do |t|
      t.index [:option_id, :user_id]
      t.index [:user_id, :option_id]
    end
  end
end
