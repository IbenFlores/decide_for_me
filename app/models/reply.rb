class Reply < ApplicationRecord
  belongs_to :dilemma
  belongs_to :owner, class_name: :User, foreign_key: :owner_id
  validates :answer, length: {
    maximum: 500
  }
end
