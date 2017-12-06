Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }

  # get 'pages/home'

  # devise_scope :user do
  #   root :to => 'devise/registrations#new'
  # end

  get '/miami', to: 'pages#miami'
  get '/fort-lauderdale', to: 'pages#fort_lauderdale'


  root 'pages#home'

  # root 'devise/registrations#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
