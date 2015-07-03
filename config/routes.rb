Rails.application.routes.draw do
  root to: 'requests#index'

  devise_for :admins, path_names: {sign_in: "login", sign_out: "logout"}
  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}

  resources :users, only: [:index, :edit, :update]
  resources :requests
end
