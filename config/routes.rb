Rails.application.routes.draw do
  root 'homes#index'
  resources :positions
  resources :trainings
  resource :homes
end
