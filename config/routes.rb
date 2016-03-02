Rails.application.routes.draw do
  devise_for :users
  root 'schools#index'
  # get 'top', :to => 'main#home'
  # get 'func', :to => 'common#common_func'
  resources :schools
end
