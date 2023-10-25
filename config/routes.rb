Rails.application.routes.draw do
  root 'sites#home'
  
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  resources :users

  resources :movies do
    resources :scenes
    resources :picturescenes
    resources :acts
    resources :credits
    get :betterprint, to: "sites#betterprint"
    get :bettercreditprint, to: "sites#bettercreditprint"
  end

  resources :disables

  get :lionnav , "disables/lionnav"
  get :moviemaker, "disables/moviemaker"
end
