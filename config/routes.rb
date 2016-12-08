Rails.application.routes.draw do
  resources :recepten

  root "recepten#index"
end
