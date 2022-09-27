Rails.application.routes.draw do
  resources :clients, only: [:show, :index, :update]
  resources :memberships, only: [:index, :create]
  resources :gyms, only: [:show, :destroy, :index, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
