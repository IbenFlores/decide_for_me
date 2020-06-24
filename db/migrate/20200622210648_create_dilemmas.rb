class CreateDilemmas < ActiveRecord::Migration[6.0]
  def change
    create_table :dilemmas do |t|
      t.text :question
      t.integer :type
      t.string :tag
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
