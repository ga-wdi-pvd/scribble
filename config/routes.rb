Rails.application.routes.draw do
  root 'posts#index'
  get '/post/:id', to: 'posts#show'

  resources :posts, only: [:show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
