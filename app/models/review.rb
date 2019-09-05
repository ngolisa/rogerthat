class Review < ApplicationRecord
  belongs_to :lesson

  validates :rating, inclusion: { in: [1, 2, 3, 4, 5] }
end
