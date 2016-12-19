# Rails.application.routes.draw do
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  # get 'artists' => 'artists#index'
  # get 'artists/:id' => 'artists#show'
  # resources :posts # , only: [:index, :show]
  # resources :comments # , only: [:index, :show]

  resources :posts

  resources :posts do
    resources :comments
  end
  #
  # root 'welcome#index'
  root 'welcome#index'
end
