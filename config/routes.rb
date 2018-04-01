Rails.application.routes.draw do
  resources :carts
  resources :categories #TODO Clean these up
  resources :pieces
  resources :users 
  resources :line_items, only: [:create]
  resources :artists do 
    resources :pieces, only: [:show, :index]
  end
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  root 'sessions#new'
  get '/auth/facebook/callback', to: 'sessions#create'
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
