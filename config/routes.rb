Rails.application.routes.draw do

  concern :tagable do
    resources :tags
  end

  resources :posts do
    resources :comments
    resources :tags
  end

  resources :categories do
    resources :tags
  end

  root 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
