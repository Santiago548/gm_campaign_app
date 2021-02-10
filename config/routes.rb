Rails.application.routes.draw do
 root 'sessions#new'
 
 get 'auth/:provider/callback', to: 'sessions#omniauth', via: [:get, :post]

 get '/login', to: 'sessions#new'
 post '/login', to: 'sessions#create'

 get '/logout', to: 'sessions#destroy'
 delete '/logout', to: 'sessions#destroy'
 
 get '/users', to:'users#index', as: 'users'
 get '/users/new', to: 'users#new', as: 'new_user'
 post '/users', to:'users#create'
 get '/users/:id', to: 'users#show', as: 'user'
 get '/users/:id/edit', to: 'users#edit', as: 'edit_user'

 # get '/characters', to:'characters#index', as: 'characters'
 get '/characters/new', to: 'characters#new'
 post '/characters/new', to: 'characters#create'
 patch '/characters/:id', to: 'characters#update'
 delete '/characters/:id', to: 'characters#destroy'

 # get '/campaigns', to: 'campaigns#index'
 # get '/campaigns/:id', to: 'campaigns#show'
 get '/campaigns/new', to: 'campaigns#new'
 post '/campaigns/new', to: 'campaigns#create'
 delete '/campaigns/:id', to: 'campaigns#destroy'
  
 resources :campaigns
 
 resources :characters, only: [:index, :new, :show, :edit, :create]

 resources :users do
  resources :characters
 end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
