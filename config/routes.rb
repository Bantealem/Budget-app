Rails.application.routes.draw do
  root 'categories#index'

  devise_for :users

  resources :users do
    resources :categories do
      resources :be_transactions
    end
  end
 
end
