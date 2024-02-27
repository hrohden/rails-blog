Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  root "application#index"

  # Defines the route for the blog post index page ("/posts")
  get "posts" => "post#index"
  # Defines the route for the blog post show page ("/posts/:id")
  get "posts/:id" => "post#show"
end
