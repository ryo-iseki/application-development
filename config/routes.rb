Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "spendings#index"
  resources :users, only: [:edit, :update, :show]
  resources :spendings, only: [:new, :create, :destroy, :edit, :update]
  resources :incomes, only: [:new, :create, :destroy, :edit, :update]
end
