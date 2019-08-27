class Notion < ApplicationRecord
  belongs_to :user
  has_many :lessons

  mount_uploader :photo, PhotoUploader
  mount_uploader :video, PhotoUploader
end
