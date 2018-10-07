Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'roots#index'
  resources :activities
  resources :activity_status
  resources :budgets
  get '/gatya', to:  'roots#gatya'

end
