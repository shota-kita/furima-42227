Rails.application.routes.draw do
  get 'furimas/index'

  get "up" => "rails/health#show", as: :rails_health_check
  root to: 'furimas#index'
end
