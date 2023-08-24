Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :teams do
    resources :players
  end

  get '/teams/:id', to: 'teams#show'
  get '/players/:id', to: 'players#show'

  get 'about', to: 'pages#about'
  get 'ladder', to: 'ladder#index'
  get 'fixture', to: 'pages#fixture'

  # Defines the root path route ("/")
  # root "articles#index"
end
