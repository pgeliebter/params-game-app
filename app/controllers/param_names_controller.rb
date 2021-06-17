class ParamNamesController < ApplicationController
  def name_is_a
    input = params["name"]
    if input.first.downcase == "a"
      render json: { message: input }
    else
    end
  end
end
