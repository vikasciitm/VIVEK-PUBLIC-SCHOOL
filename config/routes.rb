Rails.application.routes.draw do
  root 'pages#index'
  get 'pages/about_us'
  get 'pages/contact_us'
  get 'pages/admission'
  get 'pages/students'
  # devise_for :users
  devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations'
      }
  resources :secondearies
  resources :admissions
  resources :contacts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
