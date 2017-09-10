Rails.application.routes.draw do
  root 'users#new'

  resources :users, only: [:new, :create] do
    collection do
      get :select
      post :choose
    end
  end
end
