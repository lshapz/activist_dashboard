Rails.application.routes.draw do
  resources :tasks
  resources :users
  resources :sessions, except: [:create, :new]
    #map this to login and logout 
  post '/login', to: "sessions#create"  
  get 'login', to: "sessions#new"
  resources :issues 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
