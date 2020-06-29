class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :dilemmas, dependent: :destroy
  # has_many :replies, foreign_key: :owner_id
  has_and_belongs_to_many :options
  has_and_belongs_to_many :replies
  validates :username, presence: true, uniqueness: true
  has_one_attached :avatar
  after_create :send_welcome_email

  private

  def send_welcome_email
    UserMailer.send("welcome_email", self).deliver_now
  end
end
