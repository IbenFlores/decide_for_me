class Option < ApplicationRecord
  belongs_to :dilemma
  validates :description, presence: true
  validates :description, length: {
    maximum: 140
  }
  has_one_attached :photo
end
