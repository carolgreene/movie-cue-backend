class ReviewsController < ApplicationController

   #GET /reviews
   def index 
    @reviews = Review.all  

    render json: @reviews
  end

  #GET /reviews/1
  def show 
    render json @review
  end

  #POST /reviews
  def create 
    @review = Review.new(review_params)

    if @review.save 
      render json: @review, status: :created, location: @review
    else 
      render json: @review.errors, status: :unprocessable_entity
    end 
  end

  #PATCH/PUT reviews/1
  def update 
    if @review.update(review_params)
      render json: @review
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
    def set_review 
      @review = Review.find(params[:id])
    end

    #Only allow trusted parameter "white list" through
    def review_params 
      params.require(:review).permit(:movie_id, :rating, :comment)
    end
  
end
