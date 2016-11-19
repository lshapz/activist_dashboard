Rails.application.routes.draw do
  resources :tasks
  resources :users
  resources :sessions
    #map this to login and logout 
  resources :issues 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
