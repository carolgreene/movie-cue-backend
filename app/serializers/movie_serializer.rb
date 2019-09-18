class MovieSerializer 
  include FastJsonapi::ObjectSerializer 
  attributes :title, :genre, :rating, :description, :runtime, :id 

  has_many :reviews, serializer: ReviewSerializer  #not sure if I need the serializer part

  attribute :reviews do |movie|
    movie.reviews.map do |review|
      {
      reviewer_name: review.reviewer_name,
      review_title: review.review_title,
      rating: review.rating,
      comments: review.comments,
      id: review.id               #need this to pass :id as props from movieCard to reviewsContainer
    }
    end
  end


  

end