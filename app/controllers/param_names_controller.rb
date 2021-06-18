class ParamNamesController < ApplicationController
  def name_is_a
    input = params["name"]
    if !!input && input.first.downcase == "a"
      render json: { name: input, message: "Hey, your name starts with the first letter of the alphabet!" }
    else
      render json: { name: input, message: "Your name does not start with A" }
    end
  end

  def game
    input = params["num"].to_i
    if input == 0
      render json: { message: "enter a number at the end of the url with '?num=' between 1 and 100 " }
    elsif input == 33
      render json: { message: "You win!!!!" }
    elsif input < 33
      render json: { message: "too low" }
    elsif input > 33
      render json: { message: "too high" }
    else
    end
  end

  def segment_game
    input = params["num"].to_i
    if input == 0
      render json: { message: "enter a number at the end of the url with '?num=' between 1 and 100 " }
    elsif input == 33
      render json: { message: "You win!!!!" }
    elsif input < 33
      render json: { message: "too low" }
    elsif input > 33
      render json: { message: "too high" }
    else
    end
  end

  def body_game
    input = params["num"].to_i
    if input == 0
      render json: { message: "post a number with body params of num:" }
    elsif input == 33
      render json: { message: "You win!!!!" }
    elsif input < 33
      render json: { message: "too low" }
    elsif input > 33
      render json: { message: "too high" }
    else
    end
  end

  def login
    credentials = params[:username, :password]
    if credentials[:username] == "hugh" && credentials[:password] == "swordfish"
      render json: { message: "Login successful!" }
    end
  end
end
