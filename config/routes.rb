Rails.application.routes.draw do
  root to: 'dashboard#index'

  namespace :account do
    get '/dashboard', to: 'dashboard#index'
    resources :projects do
      resources :tasks, except: :index
    end
  end
end
