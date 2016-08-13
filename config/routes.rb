Rails.application.routes.draw do
  resources :scores
  get "/high_scores", to: "scores#high_scores", as: "high_scores"
end
