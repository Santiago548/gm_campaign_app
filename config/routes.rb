Rails.application.routes.draw do
 root 'sessions#welcome'
 resources :users
 resources :characters
 resources :users do
    resources:characters, shallow: true
 end

 get 'characters/new', to: 'characters#new'
 post 'characters/new', to: 'characters#create'

 get 'auth/:provider/callback', to: 'sessions#omniauth', via: [:get, :post]

 get '/login', to: 'sessions#new'
 post '/login', to: 'sessions#create'
 delete '/login', to: 'sessions#destroy'

 get '/signup', to: 'users#new'
 post '/signup', to: 'users#create'

  resources :proficiencies
  resources :languages
  resources :campaigns
  
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
