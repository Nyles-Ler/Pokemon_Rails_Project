class Review < ApplicationRecord
  belongs_to :pokemon

  validates :username, presence: true
  validates :rating, inclusion: { in: 1..5, message: "must be between 1 and 5" }
  validates :comment, presence: true, length: { minimum: 10 }
end
