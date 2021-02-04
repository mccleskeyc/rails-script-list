Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :departments do
    resources :scripts, only: [:new, :create, :index]
  end
  root to: "static#home"
  resources :scripts
end
