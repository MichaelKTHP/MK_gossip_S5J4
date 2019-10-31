Rails.application.routes.draw do
  
  
 resources :sessions, only: [:new, :create, :destroy]
 resources :gossips
 resources :users, only: [:show,:new,:create]
 resources :cities, only:[:show]
 resources :gossips do
 resources :comments, only:[ :new ,:create,:edit ]
end
  root 'gossips#index'
  get '/welcome/:id', to: 'dynamic_pages#welcome'
  get '/team', to: 'static_pages#team'
  get '/contact', to: 'static_pages#contact' 
  get '/profile', to:'dynamic_pages#profile'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


