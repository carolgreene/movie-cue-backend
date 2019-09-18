class ReviewSerializer 
  include FastJsonapi::ObjectSerializer
  attributes :rating, :comments, :reviewer_name, :review_title
  belongs_to :movie, serializer: MovieSerializer

  attribute :movie do |review|
    {
      title: review.movie.title,
      genre: review.movie.genre,
      rating: review.movie.rating,
      movie_id: review.movie.id    #had .to_i but don't seem to need it   
    }
  end
  
end 