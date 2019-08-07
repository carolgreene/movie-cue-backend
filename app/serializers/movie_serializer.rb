class MovieSerializer 
  include FastJsonapi::ObjectSerializer 
  attributes :title, :genre, :rating, :description, :runtime

  has_many :reviews, serializer: ReviewSerializer  #not sure if I need the serializer part

  attribute :reviews do |movie|
    movie.reviews.map do |review|
      {
      rating: review.rating,
      comments: review.comments
    }
    end
  end


  

end