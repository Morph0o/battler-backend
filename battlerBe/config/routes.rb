Rails.application.routes.draw do
  resources :mobmoves
  resources :monstmoves
  resources :moves
  resources :usermobs

  resources :users
  #   ^ ^ Comment out when requiring login in controllers (AUTH)

  #resources :users, only: [:create, :index]
  #   ^ ^   Uncomment when requiring login in controllers (AUTH)

  resources :mobs
  resources :monsts

  post '/login', to: 'auth#login'
  get '/auto_login', to: 'auth#auto_login'
  get '/user_is_authed', to: 'auth#user_is_authed'



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
