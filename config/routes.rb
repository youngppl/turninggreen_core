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

  get '/about' => 'about#index'
  get '/terms' => 'about#terms'
  get '/resources' => 'about#resources'
  get '/faq' => 'about#faq'
  get '/dashboard' => 'users#show'
  get '/themes' => 'themes#index'
  get '/challenges/completed' => 'challenges#completed'
  get '/challenges/reflections' => 'challenges#reflections'
  get '/challenges/:challenge_name' => 'challenges#show', :as => 'challenges'
  get '/privacy' => 'welcome#privacy'
  get '/admin' => 'admin#index'
  get '/team' => 'team#index'
  # email reminders routes
  get '/send-out-challenge-reminders' => 'challenge_mailer#send_out_challenge_reminders'
  get '/reset-email-tracking' => 'challenge_mailer#reset_email_tracking'
  post '/challenges/unlock' => 'challenges#unlock'
  post '/challenges/add' => 'challenges#create'
  post '/challenges/update-notification' => 'challenges#update_notification_viewed'
  post '/challenges/complete-challenge' => 'challenges#complete_challenge'
  post '/logs/new' => 'logs#new'
  post 'reflections/new' => 'reflections#new', :as => 'new_reflection'
  post 'reflections/edit' => 'reflections#edit', :as => 'edit_reflection'
  post '/feedback' => 'users#feedback'
  devise_scope :user do
    post '/deactivate' => 'registrations#deactivate'
  end
  resources :tips_daily, only: [:index, :show]
end
