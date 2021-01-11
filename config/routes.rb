Rails.application.routes.draw do
  root 'sites#home'
  devise_for :users

  resources :movies do
    resources :scenes
    resources :picturescenes
    resources :acts
    resources :credits
    get :betterprint, to: "sites#betterprint"
    get :creditshow, to: "sites#creditshow"
    get :bettercreditprint, to: "sites#bettercreditprint"
  end

  resources :abouts
  resources :picturescenes, only: :destroy
end
