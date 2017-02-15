Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'authentication' }

  devise_scope :user do
    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end

    authenticated do
      root 'projects#index'
    end
  end

  resources :projects, only: [:index, :show]

  namespace :admin do
    resources :users, only: [:index, :edit, :update]
    resources :projects do
      get 'delete'
    end
  end

end
