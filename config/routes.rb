Rails.application.routes.draw do
  devise_for :users, path: '',
    path_names: { sign_in: 'login',
                  sign_out: 'logout',
                  password: 'secret',
                  confirmation: 'verification',
                  unlock: 'unblock',
                  sign_up: 'register',
                  edit: 'settings' },
    controllers: {registrations: "registrations",
                  confirmations: "confirmations"}

  root 'welcome#index'

  get '/dashboard' => 'users#show'
  get '/themes' => 'themes#index'
  get '/challenges/completed' => 'challenges#completed'
  get '/challenges/:challenge_name' => 'challenges#show', :as => 'challenges'
  post '/challenges/unlock' => 'challenges#unlock'
  post '/challenges/add' => 'challenges#create'
  post '/challenges/update-notification' => 'challenges#update_notification_viewed'
  post '/logs/new' => 'logs#new'
  devise_scope :user do
    post '/deactivate' => 'registrations#deactivate'
  end
  resources :tips_daily, only: [:index, :show]
end
