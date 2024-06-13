Rails.application.routes.draw do
  
  devise_for :users, path: 'auth', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
  controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  # Define the root path route ("/")
  devise_scope :user do
    authenticated :user do
      root to: 'users/registrations#new', as: :authenticated_root
    end

    unauthenticated do
      root to: 'users/registrations#new', as: :unauthenticated_root
    end
  end

  # Add a route for user registration
  devise_scope :user do
    post 'auth/signup', to: 'users/registrations#create'
  end
  
  namespace :api do
    namespace :v1 do
      resources :products, only: [:index, :show, :create, :destroy]
      resources :landings, only: [:index, :show, :create, :destroy]
      resources :discounts, only: [:index, :show, :create, :destroy]
      resources :carts
    end
  end

  get "up" => "rails/health#show", as: :rails_health_check
  
end
