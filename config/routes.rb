Rails.application.routes.draw do
  root to: "toppage#index"
  resources :rankings, only: [:index]
  resources :profiles, only: [:index]
  resources :charts, only: [:index, :new, :create, :show] do
    resources :likes, only: [:create, :destroy]
      collection do
        get :search
      end
  end
end
