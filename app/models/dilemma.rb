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

  accepts_nested_attributes_for :options, allow_destroy: true

  after_create :assign_expiration

  def can_users_vote?
    self.expired_at > Time.zone.now
  end

  def has_user_voted?(user)
    voted = false
    self.options.each do |option|
      if user.options.where("options_users.option_id = ?", option.id).any?
        voted = true
      end
    end
    voted
  end

  def self.top_10
    @dilemmas = Dilemma.all.sort_by { |dilemma| dilemma.replies.count }
    @dilemmas.first(10)
  end

  def self.sample
    @dilemma = Dilemma.all.sample
  end

  private

  def assign_expiration
    if self.category == "easy"
      self.expired_at = self.created_at + 1.day
    elsif self.category == "medium"
      self.expired_at = self.created_at + 3.day
    elsif self.category == "hard"
      self.expired_at = self.created_at + 1.week
    end
    self.save
  end
end
