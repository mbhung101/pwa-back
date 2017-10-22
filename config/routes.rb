Rails.application.routes.draw do
  namespace :api do
  resources :messages
  resources :chatrooms
  resources :users
  end
end
