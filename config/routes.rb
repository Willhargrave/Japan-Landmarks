Rails.application.routes.draw do
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :landmarks, only: [:destroy, :update]
  resources :reviews, only: [:destroy]
  resources :landmarks, only: [:new, :create, :show, :edit] do
      resources :reviews, only: [:new, :create, :show, :update, :edit]
  end

  # Defines the root path route ("/")
  # root "articles#index"

end
