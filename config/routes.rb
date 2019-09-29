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
  get '/challenges/reflections' => 'challenges#reflections'
  get '/challenges/:challenge_name' => 'challenges#show', :as => 'challenges'
  get '/privacy' => 'welcome#privacy'
  get '/admin' => 'admin#index'
  get '/team' => 'team#index'
  post '/challenges/unlock' => 'challenges#unlock'
  post '/challenges/add' => 'challenges#create'
  post '/challenges/update-notification' => 'challenges#update_notification_viewed'
  post '/logs/new' => 'logs#new'
  post 'reflections/new' => 'reflections#new', :as => 'new_reflection'
  post 'reflections/edit' => 'reflections#edit', :as => 'edit_reflection'
  post '/feedback' => 'users#feedback'
  devise_scope :user do
    post '/deactivate' => 'registrations#deactivate'
  end
  resources :tips_daily, only: [:index, :show]
end
