Rails.application.routes.draw do
 root 'sessions#welcome'
 
 get 'auth/:provider/callback', to: 'sessions#omniauth', via: [:get, :post]

 get '/login', to: 'sessions#new'
 post '/login', to: 'sessions#create'
 delete '/login', to: 'sessions#destroy'

 get '/signup', to: 'users#new'
 post '/signup', to: 'users#create'
#########################################
 get '/users/new', to: 'users#new', as: 'new_user'
 
 get '/users', to:'users#index', as: 'users'
 post '/users', to:'users#create'
 get '/users/:id', to: 'users#show', as: 'user'
 get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
########################################
  resources :proficiencies
  resources :languages
  resources :campaigns

  resources :users do
    resources:characters, shallow: true
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
