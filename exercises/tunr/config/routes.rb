# Rails.application.routes.draw do
#   get 'artists' => 'artists#index'
#   get 'songs' => 'songs#index'
# end
Rails.application.routes.draw do
resources :artists, only: [:index, :show]
resources :songs, only: [:index, :show]
end
