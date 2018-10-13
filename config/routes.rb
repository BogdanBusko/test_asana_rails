Rails.application.routes.draw do
  root to: 'dashboard#index'

  namespace :account do
    resources :projects do
      resources :tasks, except: :index
    end
  end
end
