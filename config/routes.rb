Rails.application.routes.draw do
  get 'task/index'

  get 'task/view'

  get 'task/new'

  get 'task/edit'

  get 'issues/show'

  get 'issues/index'

  get 'issues/view'

  get 'sessions/new'

  get 'sessions/show'

  get 'users/new'

  get 'users/edit'

  get 'users/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
