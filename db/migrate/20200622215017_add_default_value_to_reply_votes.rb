class AddDefaultValueToReplyVotes < ActiveRecord::Migration[6.0]
  def change
    change_column_default :replies, :reply_votes, 0
    change_column_default :options, :upvotes, 0
  end
end
