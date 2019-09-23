Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users do
        resources :boards, shallow: true
      end
      resources :boards do 
        resources :images, shallow: true
        resources :goals, shallow: true
      end
      resources :images
      resources :goals
    end
  end
end


