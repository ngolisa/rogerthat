class Notion < ApplicationRecord
  belongs_to :user
  has_many :lessons
  belongs_to :category

  scope :filter_by_student_n, ->(user_id) {where(student_id: user_id)}
  scope :filter_by_notion, ->(user_id) {where(student_id: user_id)}

  mount_uploader :photo, PhotoUploader
  mount_uploader :video, PhotoUploader
end
