Rails.application.routes.draw do
  get 'users/home'

  get 'users/show'

  devise_for :users
  root to: 'users#home'
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
