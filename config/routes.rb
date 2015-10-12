Rails.application.routes.draw do

  resources :appointments
  resources :patients
  get '/patients/:id' => 'patients#send'

  resources :users
end
