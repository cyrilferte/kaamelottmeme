Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  root to: 'pages#home'
  resources :images
  resources :memes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
