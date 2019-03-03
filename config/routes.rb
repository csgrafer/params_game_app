Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/query_params" => "games#query_action"
    get "/name_route" => "games#name_action"
    get "/game_route" => "games#game_action"
    get "/segment_route/:place" => "games#segment_action"
  end
end
