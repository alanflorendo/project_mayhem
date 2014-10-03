Rails.application.routes.draw do
  root 'hypos#index'
  resources :hypos

end
