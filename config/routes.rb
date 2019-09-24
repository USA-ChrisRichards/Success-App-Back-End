Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users do
        resources :boards
      end
      resources :boards do 
        resources :images
      end
      resources :boards do
        resources :goals
      end
      resources :images
      resources :goals
    end
  end
end


