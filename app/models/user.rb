class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :notions
  has_many :lessons
  has_many :reviews, through: :lessons
  mount_uploader :avatar, PhotoUploader
  # validates :avatar, presence: true

  def full_name
    "#{first_name} #{last_name}"
  end
end
