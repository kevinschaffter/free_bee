Rails.application.routes.draw do
  devise_for :users
  get 'pages/home'

  devise_scope :user do
    root :to => 'devise/registrations#new'
  end

  # root 'devise/registrations#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
