Rails.application.routes.draw do
  mount Upmin::Engine => '/admin'
  root to: 'visitors#index'
  devise_for :users
  resources :users
mount MailPreview => 'mail_view' if Rails.env.development?end
