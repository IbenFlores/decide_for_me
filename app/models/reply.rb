class Reply < ApplicationRecord
  belongs_to :dilemma
  belongs_to :owner, class_name: :User, foreign_key: :owner_id
  has_and_belongs_to_many :users
  validates :answer, length: {
    minimum: 1, maximum: 280
  }

  def created_by?(user)
    owner == user
  end
end
