Rails.application.routes.draw do
  resources :proficiencies
  resources :languages
  resources :characters
  resources :campaigns
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
