Rails.application.routes.draw do
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]

  get '/tasks', to: 'tasks#index'
  get '/tasks/:id', to: 'tasks#show'
  post '/tasks', to: 'tasks#create'
  patch '/tasks/:id', to: 'tasks#update'
  delete '/tasks/:id', to: 'tasks#destroy'

  get '/expenses', to: 'expenses#index'
  get '/expenses/:id', to: 'expenses#show'
  post '/expenses', to: 'expenses#create'
  patch '/expenses/:id', to: 'expenses#update'
  delete '/expenses/:id', to: 'expenses#destroy'
end
