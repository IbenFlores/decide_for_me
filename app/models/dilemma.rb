class Dilemma < ApplicationRecord
  belongs_to :user
  has_many :options, dependent: :destroy
  has_many :replies, dependent: :destroy
  validates :question, presence: true
  validates :category, presence: true
  validates :question, length: {
    maximum: 140
  }
  has_one_attached :photo

  accepts_nested_attributes_for :options
end
