Rails.application.routes.draw do

  resources :jobs

  resources :filter_types

  resources :pool_types

  resources :customers
  resources :job_types
  resources :workers

  root 'static#index'
  get 'test' => 'static#test'

end
