Rails.application.routes.draw do
  devise_for :users
  resources :npos
  resources :charges

  root :to => 'npos#index'
end
