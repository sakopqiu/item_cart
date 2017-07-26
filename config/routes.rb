Rails.application.routes.draw do
  root to: 'site#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :items, only: [:index, :show, :create, :destroy, :update]
    end
  end

  resources :jobs, only: [:new, :create] do
  end

  mount Resque::Server, at: "/resque"
end
