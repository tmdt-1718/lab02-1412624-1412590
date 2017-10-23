Rails.application.routes.draw do
  get '/signup', to: 'users#new'

  get  '/message', to: 'message#new'
  post '/message', to: 'message#create'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'

  delete '/logout',  to: 'sessions#destroy'
  resources :users
  resources :messages
  get 'welcome/index'
  root 'welcome#index'
end
