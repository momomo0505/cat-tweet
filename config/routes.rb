Rails.application.routes.draw do
  devise_for :users
  root to: "fails#index"
  resources :fails, only: [:new, :create, :show, :edit, :update, :destroy] do
    collection do
      get 'search'
    end
      resources :comments, only: :create
      resource :likes, only: [:create, :destroy]
    end
    
  resources :users, only: [:show, :edit, :update]do
    resources :messages, only: [:index, :create]

  end

end