Rails.application.routes.draw do
  root to: 'requests#index'

  devise_for :admins, path_names: {sign_in: "login", sign_out: "logout"}
  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}

  match '/users', to:'users#index', via: 'get'

  resources :requests
end
