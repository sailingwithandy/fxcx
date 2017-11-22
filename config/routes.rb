Rails.application.routes.draw do
  root 'currencies#index'
  resources :currencies
end
