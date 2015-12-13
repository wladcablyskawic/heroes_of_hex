Rails.application.routes.draw do
  resources :sessions, only: [:create]

  resources :rooms, only: [:create, :index]

  match "/rooms" => "application#index", via: :options
end
