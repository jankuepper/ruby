Rails.application.routes.draw do
  resources :statements
  resources :datawrappers
  resources :tickers
  resources :end_of_days
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
