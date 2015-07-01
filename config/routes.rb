Rails.application.routes.draw do
  devise_for :admins, path_names: {sign_in: "login", sign_out: "logout"}
  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}
  root to: 'requests#index'

  resources :requests
end
