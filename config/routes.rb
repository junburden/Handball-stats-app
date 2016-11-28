Rails.application.routes.draw do

  resources :shots
  resources :games
  resources :players
  resources :teams
  resources :memberships, except: [:index, :show]

  root 'games#index'
end
