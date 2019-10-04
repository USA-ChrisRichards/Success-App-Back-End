Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do

      # resources :users

      resources :users, only: [:create]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
      
      resources :users do
        resources :boards
      end
      
      # resources :boards do 
      #   resources :images
      # end
      
      resources :boards do
        resources :goals
      end
      
      resources :images 
      resources :goals
      end

  end
end


