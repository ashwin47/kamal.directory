Rails.application.routes.draw do
  get "gems/index"
  get "gems/show"

  # resources :kamalfiles do
  #   member do
  #     post "favorite", to: "kamalfiles#favorite"
  #     delete "unfavorite", to: "kamalfiles#unfavorite"
  #   end
  # end

  resources :kamalfiles

  resources :gems

  get "/top-gems", to: "pages#top_gems"

  # Authentication
  get "auth/github/callback", to: "sessions#create"
  get "auth/failure", to: "sessions#failure"
  delete "sign_out", to: "sessions#destroy"

  get "search", to: "search#index"

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", :as => :rails_health_check

  # Defines the root path route ("/")
  root "kamalfiles#index"
end
