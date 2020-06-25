class Dilemma < ApplicationRecord
  belongs_to :user
  has_many :options, dependent: :destroy
  has_many :replies, dependent: :destroy
  validates :question, presence: true
  validates :category, presence: true
  validates :question, length: {
    maximum: 140
  }
  enum category: [ :easy, :medium, :hard ]
  has_one_attached :photo

  accepts_nested_attributes_for :options

  def has_user_voted?(user)
    voted = false
    self.options.each do |option|
      if user.options.where("options_users.option_id = ?", option.id).any?
        voted = true
      end
    end
    voted
  end
end
