Rails.application.routes.draw do

  resources :patients
  get '/patients/:id' => 'patients#send'

  resources :users
end
