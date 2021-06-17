Rails.application.routes.draw do
  get "/params" => "param_names#name_is_a"
end
