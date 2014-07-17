Rails.application.routes.draw do

  resources :job_types

  resources :workers

  root 'static#index'
  get 'test' => 'static#test'

end
