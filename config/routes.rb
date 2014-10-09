Rails.application.routes.draw do
  devise_for :users

  root 'home#index'
  resources :calendar
  resources :renters
  
  get '/about', to: 'pages#about' 
  get '/artist', to: 'pages#artist' 
  get '/island', to: 'pages#island' 
end
