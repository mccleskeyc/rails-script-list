Rails.application.routes.draw do
  devise_for :users
  resources :departments
  root to: "static#home"
  resources :scripts
end
