Rails.application.routes.draw do
  get 'internal/version'
  get 'internal/revision'
  get 'internal/changes'

  namespace :achievements do
    resources :badges
  end

  namespace :achievements do
    resources :unlocks
  end

  resources :achievements

  mount Upmin::Engine => '/admin'
  root to: 'visitors#index'
  devise_for :users
  resources :users
mount MailPreview => 'mail_view' if Rails.env.development?end
