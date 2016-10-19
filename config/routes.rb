Rails.application.routes.draw do
  resources :scores, :except => [:update, :destroy]
  get "/high_scores", to: "scores#high_scores", as: "high_scores"
end
