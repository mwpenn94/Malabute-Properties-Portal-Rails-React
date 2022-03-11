Rails.application.routes.draw do
  root 'pages#home'
  get 'contact_us', to: 'pages#contact_us'
  get 'sample_deal', to: 'pages#sample_deal'
  get 'about', to: 'pages#about'
  get 'privacy_policy', to: 'pages#privacy_policy'
  get 'terms_of_service', to: 'pages#terms_of_service'
  resources :articles
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  resources :categories, except: [:destroy]
end
