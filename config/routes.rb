Rails.application.routes.draw do
  root to: "toppage#index"
  resources :rankings, only: [:index]
  resources :charts, only: [:index, :new, :create, :show] do
    resources :likes, only: [:create, :destroy]
  end
end
