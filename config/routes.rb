Rails.application.routes.draw do
  

  devise_for :users
  resources :teaches
  resources :instructors
  resources :takes
  resources :stu_has_deps
  resources :paymentts
  resources :studentts
  resources :cheques
  resources :discounts
  resources :sessions
  resources :courses
  resources :departments
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
