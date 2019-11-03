class Review < ApplicationRecord
  belongs_to :movie

  validates :reviewer_name, :review_title, :rating, :comments, presence: true
  
end
