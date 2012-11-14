SkeletonRails::Application.routes.draw do
  resources :participants


  root :to => 'index#index'

  get "agenda", "faq", "intro", :controller => "index"

end
