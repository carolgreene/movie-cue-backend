Rails.application.routes.draw do

  #to make api to be movie_cue.com/api/v1/resource
  namespace :api do
    namespace :v1 do 
      resources :reviews
      resources :movies
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
