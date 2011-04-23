HeadlinesToHeadlines::Application.routes.draw do
  resources :rounds do
  end

  root :to => "rounds#index"
end
