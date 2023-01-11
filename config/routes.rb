Rails.application.routes.draw do
  root 'categories#index'
  
  get '/expenses', to: 'expenses#index'
  get '/expenses/new', to: 'expenses#new'
  post '/expenses', to: 'expenses#create'
  get '/expenses/:id', to: 'expenses#show'


  devise_for :users

  # resources :users do
  #   resources :categories do
  #     resources :be_transactions
  #   end
  # end

  # resources :users, only: [:create, :show, :index] 
  resources :categories, only: [:index, :show, :create, :new]
  # resources :be_transactions, only: [:index, :show, :create, :new]
  # resources :be_transactions, only: [:index, :show, :create, :new]
 
end
