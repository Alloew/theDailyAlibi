Rails.application.routes.draw do
  root "alibis#index"

  resources :alibis
end
