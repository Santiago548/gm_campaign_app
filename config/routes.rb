Rails.application.routes.draw do
 root 'sessions#welcome'
 get '/characters/new', to: 'characters#new'
 post '/characters/new', to: 'characters#create'
 patch '/characters/:id/edit', to: 'characters#update'
 delete '/characters/', to: 'characters#destroy'

 get 'auth/:provider/callback', to: 'sessions#omniauth', via: [:get, :post]

 get '/login', to: 'sessions#new'
 post '/login', to: 'sessions#create'
 delete '/login', to: 'sessions#destroy'

 # get '/campaigns', to: 'campaigns#index'
 # get '/campaigns/:id', to: 'campaigns#show'
 get '/campaigns/new', to: 'campaigns#new'
 post '/campaigns/new', to: 'campaigns#create'
 delete '/campaigns/:id', to: 'campaigns#destroy'


 get '/users/new', to: 'users#new', as: 'new_user'

 get '/users', to:'users#index', as: 'users'
 post '/users', to:'users#create'
 get '/users/:id', to: 'users#show', as: 'user'
 get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  
 resources :campaigns
 resources :characters
 resources :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
