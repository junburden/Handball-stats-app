Rails.application.routes.draw do

  resources :tournaments
  resources :leagues
  resources :shots
  resources :games
  resources :players
  resources :teams
  resources :memberships, except: [:index, :show]

  root 'leagues#index'
end
