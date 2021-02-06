Rails.application.routes.draw do
 root 'sessions#welcome'
 
 resources :characters
 resources :users
 resources :campaigns
 get '/users/new', to: 'users#new'
 post '/users/new', to: 'users#create'
 delete 'users/:id', to: 'users#destroy'

 get '/characters/new', to: 'characters#new'
 post '/characters/new', to: 'characters#create'
 get '/characters/:id/edit', to: 'characters#edit'
 patch '/characters/:id', to: 'characters#update'

 get 'auth/:provider/callback', to: 'sessions#omniauth', via: [:get, :post]

 get '/login', to: 'sessions#new'
 post '/login', to: 'sessions#create'
 delete '/login', to: 'sessions#destroy'



 # get '/campaigns', to: 'campaigns#index'
 # get '/campaigns/:id', to: 'campaigns#show'
 get '/campaigns/new', to: 'campaigns#new'
 post '/campaigns/new', to: 'campaigns#create'
 delete '/campaigns/:id', to: 'campaigns#destroy'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
