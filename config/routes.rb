Rails.application.routes.draw do
  get "/params" => "param_names#name_is_a"
  get "/guess_game" => "param_names#game"
end
