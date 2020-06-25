class Option < ApplicationRecord
  belongs_to :dilemma
  has_and_belongs_to_many :users
  validates :description, presence: true
  validates :description, length: {
    maximum: 140
  }
  has_one_attached :photo
end
