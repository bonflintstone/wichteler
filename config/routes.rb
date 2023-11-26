Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  root to: redirect('games/new')

  resources :games
  resources :participants
end
