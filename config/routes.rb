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
  post 'band/:band_id/tasks', to: 'tasks#create'
  # patch '/tasks/:id', to: 'tasks#update'
  put '/tasks/:id', to: 'tasks#update'
  delete '/tasks/:id', to: 'tasks#destroy'

  get '/expenses', to: 'expenses#index'
  get '/expenses/:id', to: 'expenses#show'
  post '/expenses', to: 'expenses#create'
  post 'band/:band_id/expenses', to: 'expenses#create'
  put '/expenses/:id', to: 'expenses#update'
  # patch '/expenses/:id', to: 'expenses#update'
  delete '/expenses/:id', to: 'expenses#destroy'

  get '/contacts', to: 'contacts#index'
  get '/contacts/:id', to: 'contacts#show'
  post '/contacts', to: 'contacts#create'
  post 'band/:band_id/contacts', to: 'contacts#create'
  put '/contacts/:id', to: 'contacts#update'
  # patch '/contacts/:id', to: 'contacts#update'
  delete '/contacts/:id', to: 'contacts#destroy'

  get '/bands', to: 'bands#index'
  get '/bands/:id', to: 'bands#show'
  post '/bands', to: 'bands#create'
  put '/bands/:id', to: 'bands#update'
  # patch '/bands/:id', to: 'bands#update'
  delete '/bands/:id', to: 'bands#destroy'
end
