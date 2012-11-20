SkeletonRails::Application.routes.draw do
  resources :participants


  root :to => 'index#index'

  get "agenda", "faq", "apply", "confirm", "login", "console", :controller => "index"
  post "apply" => "index#submit"
  post "signin" => "index#signin"

end
