Rails.application.routes.draw do
  devise_for :users
  get 'goals/index'
  root to: "goals#index"
  resources :users, only: [:edit, :update]
  resources :goals, only: [:new, :create]
end
