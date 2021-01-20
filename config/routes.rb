Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :destroy, :update, :create]
  resources :comments, only: [:index, :show, :destroy, :update, :create]
  resources :movies, only: [:index, :show, :destroy, :update, :create]
  resources :books, only: [:index, :show, :destroy, :update, :create]
  resources :users, only: [:index, :show, :destroy, :update, :create]
end
