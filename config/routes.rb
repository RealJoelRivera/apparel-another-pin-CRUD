Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get "info", to: "pages#info"

  resources :products do
    resources :order_items
  end

  root "pages#home"
end
