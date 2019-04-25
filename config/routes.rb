Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :users, path: '/', param: :username, only: %i[show]
end
