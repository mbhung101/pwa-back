Rails.application.routes.draw do
  root 'welcome#index'
  get 'messages/reply'


  namespace :api do
  resources :texts    
  resources :messages
  resources :chatrooms
  resources :users
end

end
