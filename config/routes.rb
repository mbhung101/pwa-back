Rails.application.routes.draw do
  root 'welcome#index'
  get 'messages/reply'

  resources :texts
  namespace :api do
  resources :messages
  resources :chatrooms
  resources :users
end

end
