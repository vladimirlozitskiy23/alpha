Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "news#index"
   resources :news
   resources :photo_reports
   resources :videos
   resources :employees
   resources :representations
   resources :schools

   get '/history', to: 'pages#history'
   get '/contacts', to: 'pages#contacts'
   get '/support', to: 'pages#support'
   get '/payment', to: 'pages#payment'
   get '/award', to: 'pages#award'
   get '/newspaper', to: 'pages#newspaper'

end
