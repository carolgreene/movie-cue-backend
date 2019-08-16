class Api::V1::MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :update, :destroy]

  #GET /movies
  def index 
    @movies = Movie.all      
    render json: MovieSerializer.new(@movies)
  end

  #GET /movies/1
  def show 
    options = {include: [:reviews]}
    serializedMovie = MovieSerializer.new(@movie, options).serialized_json
    render json: serializedMovie
  end

  #POST /movies
  def create  
    @movie = Movie.new(movie_params)
    
    if @movie.save       
      render json: MovieSerializer.new(@movie), status: :created     
    else 
      error_resp = {
        error: @movie.errors.full_messages.to_sentence
      }
      render json: error_resp, status: :unprocessable_entity
    end 
  end

  #PATCH/PUT movies/1
  def update 
    if @movie.update(movie_params)
      render json: @movie
    else
      render json: @movie.errors, status: unprocessable_entity
    end 
  end

  #DELETE /movies/1
  def destroy 
    @movie.destroy 
  end

  private 
    #use callbacks to share common setup or constraints
    def set_movie 
      @movie = Movie.find(params[:id])
    end

    #Only allow trusted parameter "white list" through
    def movie_params 
      params.require(:movie).permit(:title, :genre, :rating, :description, :runtime)
    end

end
