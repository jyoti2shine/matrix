Rails.application.routes.draw do
  root 'home#index'
  resources :positions
  resources :trainings
end
