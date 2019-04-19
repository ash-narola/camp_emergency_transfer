Rails.application.routes.draw do
  resources :emergency_transfer, only: [:index, :show]

  root to: "emergency_transfer#index"
end
