Rails.application.routes.draw do
  resources :mobmoves
  resources :monstmoves
  resources :moves
  resources :usermobs
  resources :users
  resources :mobs
  resources :monsts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
