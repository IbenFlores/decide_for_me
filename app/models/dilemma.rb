class Dilemma < ApplicationRecord
  belongs_to :user
  has_many :options, dependent: :destroy
  has_many :replies, dependent: :destroy
  validates :question, presence: true
  validates :type, presence: true
  validates :question, length: {
    maximum: 140
  }
end
