Rails.application.routes.draw do
  resources :recepts

  root "recepts#index"
end
