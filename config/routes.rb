Rails.application.routes.draw do
  devise_for :users
  root to: "article#index"
  resources :article, only: [:new] do
  end
end
