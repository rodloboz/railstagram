Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :users, path: '/', param: :username, only: %i[show] do
    post :follow, to: 'users/follows#create', as: :follow
    delete :follow, to: 'users/follows#destroy', as: :unfollow
  end
end
