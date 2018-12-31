Rails.application.routes.draw do
  root 'sites#home'

  get :about, to: 'sites#about'

  devise_for :users
  resources :movies do
    resources :scenes
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
