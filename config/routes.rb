Rails.application.routes.draw do
  resources :departments
  root to: "static#home"
  resources :scripts
end
