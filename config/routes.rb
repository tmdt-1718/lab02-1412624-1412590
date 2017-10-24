Rails.application.routes.draw do
  get    '/signup', to: 'users#new'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
  resources :messages
  resources :friend_lists  
  get 'welcome/index'
  root 'welcome#index'
end
