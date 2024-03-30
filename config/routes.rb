Rails.application.routes.draw do
  

  get 'admin' => 'admin#index' 
  controller :sessions do
    get 'login' => :new
    post 'login' => :create 
    delete 'logout' => :destroy
  end
  # Other routes
  get 'sessions/create'
  get 'sessions/destroy'
  get 'sessions/new'
  resources :users
  resources :orders
  resources :line_items
  resources :carts
  resources :products do
    get :who_bought, on: :member
  end

  # Root route
  root 'store#index', as: 'store_index'

  # Health check route
  get "up" => "rails/health#show", as: :rails_health_check
end
