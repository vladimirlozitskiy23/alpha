Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "news#index"
   resources :news

   get 'pages/history', to: 'pages#history'
   get 'pages/contacts', to: 'pages#contacts'
   get 'pages/support', to: 'pages#support'
   get 'pages/payment,', to: 'pages#payment,'
   get 'pages/award,', to: 'pages#award,'
   get 'pages/newspaper', to: 'pages#newspaper'

end
