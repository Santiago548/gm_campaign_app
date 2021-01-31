Rails.application.routes.draw do
 root 'sessions#welcome'
 get 'auth/:provider/callback', to: 'sessions#omniauth', via: [:get, :post]

 get '/login', to: 'sessions#new'
 post '/login', to: 'sessions#create'
 delete '/login', to: 'sessions#destroy'

 # get '/signup', to: 'users#new'
 # post '/signup', to: 'users#create'
  
  resources :proficiencies
  resources :languages
  resources :characters
  resources :campaigns
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
