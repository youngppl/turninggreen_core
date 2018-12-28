Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', sign_up: 'register' }
  root 'welcome#index'
  
  get '/dashboard' => 'users#show'
  get '/themes' => 'themes#index'
  resources :tips_daily, only: [:index, :show]
end
