Rails.application.routes.draw do
  devise_for :users
  resources :npos do
    resources :subscriptions
  end
  resources :charges

  root :to => 'npos#index'
end
