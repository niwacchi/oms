Rails.application.routes.draw do
  get 'orders/index'

  get 'orders/new'

  get 'orders/show'

  get 'orders/edit'

  get 'orders/destroy'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'  

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
