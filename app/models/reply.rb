class Reply < ApplicationRecord
  belongs_to :dilemma
  belongs_to :owner, class_name: :User, foreign_key: :owner_id
  has_and_belongs_to_many :users
  validates :answer, length: {
    minimum: 1, maximum: 280
  }

  def has_user_marked_reply?(user)
    marked = false
    self.users.each do |user|
      if user.replies.where("replies_users.reply_id = ?", self.id).any?
        marked = true
      end
    end
    marked
  end
end
