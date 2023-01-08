Rails.application.routes.draw do
  get 'rooms/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  delete '/signout', to: 'sessions#destroy'
  resources :rooms do
    resources :messages
  end
  resources :users
  # Defines the root path route ("/")
  root "rooms#index"
end
