Rails.application.routes.draw do
  devise_for :users
  get 'goals/index'
  root to: "goals#index"
  resources :users, only: [:edit, :update]
end
