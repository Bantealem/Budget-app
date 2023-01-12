Rails.application.routes.draw do
  root 'categories#index'

  devise_for :users

  # resources :users do
  #   resources :categories do
  #     resources :be_transactions
  #   end
  # end

  # resources :users, only: [:create, :show, :index] 
  resources :categories, only: [:index, :show, :create, :new] do
    resources :expenses, only:[:index, :show, :create, :new]
  end
  # resources :be_transactions, only: [:index, :show, :create, :new]
  # resources :be_transactions, only: [:index, :show, :create, :new]
 
end
