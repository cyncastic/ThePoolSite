Rails.application.routes.draw do

  resources :workers

  root 'static#index'
  get 'test' => 'static#test'

end
