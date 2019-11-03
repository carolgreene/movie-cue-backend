class Movie < ApplicationRecord
  has_many :reviews

  validates :title, :genre, :rating, :runtime, :description, presence: true
  
end
