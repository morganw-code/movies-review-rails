Rails.application.routes.draw do
  get "/movies", to: "movies#index"
  post "/movies", to: "movies#create"
  get "/movies/new", to: "movies#new"
  get "/movies/:id/edit", to: "movies#edit"
  get "/movies/:id", to: "movies#show", as: "movie"
  put "/movies/:id", to: "movies#update"
end
