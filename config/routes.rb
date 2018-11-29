Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', sign_up: 'register' }
  root 'welcome#index'

  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
    get 'register', to: 'devise/registrations#new'
    post 'register', to: 'devise/registrations#create'
    delete 'logout', to: 'devise/sessions#destroy'
  end

  get '/themes' => 'themes#index'
  resources :tips_daily, only: [:index, :show]
end
