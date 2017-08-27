Rails.application.routes.draw do

  namespace :api do 
    namespace :v1 do 
      root to: "artists#index"

      resources :albums, except: [:create]
      post "albums/create", as: :create_albums

      resources :artists, param: :artist, only: [:show]

      resources :years, only: [:index]

      resources :genres, only: [:index]
    end
  end

end
