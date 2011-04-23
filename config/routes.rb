HeadlinesToHeadlines::Application.routes.draw do
  resources :rounds do
  end

  root :to => "rounds#index"
  match "/auth/:provider/callback" => "sessions#create"  
  match "/signout" => "sessions#destroy", :as => :signout  

end
