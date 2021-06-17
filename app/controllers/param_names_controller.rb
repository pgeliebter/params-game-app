class ParamNamesController < ApplicationController
  def name_is_a
    input = params["name"]
    if !!input && input.first.downcase == "a"
      render json: { name: input, message: "Hey, your name starts with the first letter of the alphabet!" }
    else
      render json: { name: input, message: "Your name does not start with A" }
    end
  end
end
