Rails.application.routes.draw do
  resources :proficiencies
  resources :languages
  resources :characters
  resources :game_masters
  resources :campaigns
  resources :players
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
