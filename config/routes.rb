Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get 'comments' => 'comments#index'
  # get 'posts' => 'posts#index'
  resources :posts, only: [:index, :show]
  resources :comments, only: [:index]

end
