class CreateJoinTableRepliesUsers < ActiveRecord::Migration[6.0]
  def change
    create_join_table :replies, :users do |t|
      t.index [:reply_id, :user_id]
      t.index [:user_id, :reply_id]
    end
  end
end
