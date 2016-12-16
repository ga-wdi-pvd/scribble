# Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  Rails.application.routes.draw do
    # get 'artists' => 'artists#index'
    # get 'artists/:id' => 'artists#show'
    resources :posts, only: [:index, :show]
    resources :comments, only: [:index, :show]

  end




# end
