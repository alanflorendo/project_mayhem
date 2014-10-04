Rails.application.routes.draw do
  root 'hypos#index'

  concern :voteable do
    resources :votes, only: [:create, :update]
  end

  resources :hypos, concerns: :voteable do
    resources :comments, concerns: :voteable
  end

  resources :users, only: [:new, :create] #:destroy]

  get 'login' => 'sessions#new', as: :login
  post 'login' => 'sessions#create'
  get 'logout' => 'sessions#destroy', as: :logout
  get 'signup' => 'users#new', as: :signup
  post 'signup' => 'users#create'

end
