Rails.application.routes.draw do
  root 'sites#home'

  devise_for :users
  resources :movies
  resources :scenes

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
