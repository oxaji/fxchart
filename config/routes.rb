Rails.application.routes.draw do
  root to: "toppage#index"
  resources :charts, only: [:new]
end
