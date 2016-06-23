Rails.application.routes.draw do
  resources :shots
  resources :games
  resources :players
  resources :teams

  root 'games#index'
end
