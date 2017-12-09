Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }

  root 'pages#home'


  get '/miami', to: 'pages#miami'
  get '/index', to: 'pages#index'
  get '/fort-lauderdale', to: 'pages#fort_lauderdale'

end
