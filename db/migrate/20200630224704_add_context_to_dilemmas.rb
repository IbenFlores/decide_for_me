class AddContextToDilemmas < ActiveRecord::Migration[6.0]
  def change
    add_column :dilemmas, :context, :string
  end
end
