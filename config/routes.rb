Rails.application.routes.draw do
  resources :teams
  mount Ckeditor::Engine => '/ckeditor'
  resources :welcomes
  resources :sections
  resources :feedbacks
  resources :faqs
  resources :contacts
  resources :banners
  resources :boards
  resources :blogs
  resources :features
  resources :services
  resources :abouts
  resources :headers
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)


  root "welcomes#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
