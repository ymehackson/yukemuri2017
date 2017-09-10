Rails.application.routes.draw do
  root 'users#new'

  resources :users, only: [:new, :create] do
    collection do
      get :select
      post :choose
      get :result
    end
  end

  resources :groups do
    collection do
      get :detail
    end
  end
end
