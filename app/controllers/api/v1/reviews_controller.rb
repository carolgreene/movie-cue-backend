class Api::V1::ReviewsController < ApplicationController
  before_action :set_movie

   #GET /reviews
   def index 
    @reviews = @movie.reviews  

    render json: ReviewSerializer.new(@reviews)
  end

  #GET /reviews/1
  def show 
    render json: ReviewSerializer.new(@review)
  end

  #POST /reviews
  def create 
    #byebug    
    @review = @movie.reviews.new(review_params)

    if @review.save 
      render json: MovieSerializer.new(@movie), status: :created
    else 
      error_resp = {
        error: @movie.errors.full_messages.to_sentence
      }
      render json: error_resp, status: :unprocessable_entity
    end 
  end

  #PATCH/PUT reviews/1
  def update 
    if @review.update(review_params)
      render json: ReviewSerializer.new(@review)
    else
      render json: @review.errors, status: unprocessable_entity
    end 
  end

  #DELETE /reviews/1
  def destroy 
    @review.destroy 
  end

  private 
    #use callbacks to share common setup or constraints
    def set_movie      
      @movie = Movie.find(params[:movie_id])
    end

    #Only allow trusted parameter "white list" through
    def review_params 
      params.require(:review).permit(:movie_id, :rating, :comments)
    end
  
end