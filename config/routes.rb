HeadlinesToHeadlines::Application.routes.draw do
  resources :rounds do
    get :game
    post :leave_game
    post :play
  end

  root :to => "rounds#index"
  match "/auth/:provider/callback" => "sessions#create"  
  match "/signout" => "sessions#destroy", :as => :signout  

end
