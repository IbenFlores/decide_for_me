class CreateOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :options do |t|
      t.text :description
      t.integer :upvotes
      t.references :dilemma, null: false, foreign_key: true

      t.timestamps
    end
  end
end
