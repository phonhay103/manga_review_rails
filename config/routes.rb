Rails.application.routes.draw do
  delete 'favourites/del', to: 'favourites#del'
  resources :favourites

  get 'users/profile'
  resources :reviews
  resources :authors
  resources :categories
  resources :mangas
  devise_for :users
  get 'home/about'
  root 'home#index'
end
