Rails.application.routes.draw do
 root 'sessions#new'
 
 get 'auth/:provider/callback', to: 'sessions#omniauth', via: [:get, :post]

 get '/login', to: 'sessions#new'
 post '/login', to: 'sessions#create'

 get '/logout', to: 'sessions#destroy'
 delete '/logout', to: 'sessions#destroy'
 
 resources :characters, only: [:index, :new, :show, :edit, :update, :destroy, :create]
 resources :users, only: [:index, :new, :show, :edit, :create]
 resources :campaigns, only: [:index, :new, :show, :edit, :create]

 resources :users do
  resources :characters
 end

 resources :campaigns do
  resources :characters
end

end
