Rails.application.routes.draw do

  root 'pages#home'

  get '/home', to: 'pages#home'
  get '/wakemydyno.txt', to: 'pages#dyno'

  resources :recipes do
    member do
      post 'like'
    end
  end

  resources :chefs, except: [:new, :destroy]
  get '/register', to: 'chefs#new'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  resources :styles, only: [:new, :create, :show]
  resources :ingredients, only: [:new, :create, :show]

end
