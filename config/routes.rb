Rails.application.routes.draw do
  devise_for :users

  root to: "homes#index"

  namespace :api do
    namespace :v1 do
      resources :books, only: [:index, :show]
      # resources :reviews, only: :show
    end
  end
end
