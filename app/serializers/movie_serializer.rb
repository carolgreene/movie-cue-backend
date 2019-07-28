class MovieSerializer 
  include FastJsonapi::ObjectSerializer 
  attributes :title, :genre, :rating, :description, :runtime

  has_many :reviews, serializer: ReviewSerializer

  attribute :reviews do |movie|
    movie.reviews.map do |review|
      {
      rating: review.rating,
      comments: review.comments
    }
    end
  end


  

end