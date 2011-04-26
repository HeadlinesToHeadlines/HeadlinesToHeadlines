HeadlinesToHeadlines::Application.routes.draw do
  get "discussions/create"

  resources :rounds do
    get :game
    post :leave_game
    post :play
    post :winner
    post :finish
  end

  resources :discussions do
  end

  root :to => "rounds#index"
  match "/auth/:provider/callback" => "sessions#create"  
  match "/signout" => "sessions#destroy", :as => :signout  

end
