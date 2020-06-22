class AddOwnerToReply < ActiveRecord::Migration[6.0]
  def change
    add_reference :replies, :owner, references: :users, index: true
    add_foreign_key :replies, :users, column: :owner_id
  end
end
