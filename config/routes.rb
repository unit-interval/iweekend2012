SkeletonRails::Application.routes.draw do

  root :to => 'index#index'

  get "agenda", "faq", "intro", :controller => "index"

end
