class CreateReplies < ActiveRecord::Migration[6.0]
  def change
    create_table :replies do |t|
      t.text :answer
      t.integer :reply_votes
      t.references :dilemma, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
