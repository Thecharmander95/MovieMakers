Rails.application.routes.draw do
  root 'sites#home'
  devise_for :users

  resources :movies do
    resources :scenes
    resources :picturescenes
    resources :actors
    get :betterprint, to: "sites#betterprint"
  end

  resources :abouts
  resources :picturescenes, only: :destroy
end
