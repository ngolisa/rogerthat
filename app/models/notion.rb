class Notion < ApplicationRecord
  belongs_to :user
  has_many :lessons
  has_many :reviews, dependent: :destroy


  mount_uploader :photo, PhotoUploader
  mount_uploader :video, PhotoUploader
end
s
