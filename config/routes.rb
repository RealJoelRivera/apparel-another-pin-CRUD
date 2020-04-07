Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get "info", to: "pages#info"

  resources :products
  root "pages#home"
end
