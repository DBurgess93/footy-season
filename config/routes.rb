Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :players
  get '/players/:id', to: 'players#show'

  resources :teams
  get '/teams/:id', to: 'teams#show'

  get 'about', to: 'pages#about'
  get 'ladder', to: 'pages#ladder'
  get 'fixture', to: 'pages#fixture'

  # Defines the root path route ("/")
  # root "articles#index"
end
