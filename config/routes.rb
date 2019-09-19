Rails.application.routes.draw do
  resources :images
  resources :boards
  resources :goals
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
