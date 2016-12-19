Rails.application.routes.draw do
  get 'pages/main'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#main'
end
