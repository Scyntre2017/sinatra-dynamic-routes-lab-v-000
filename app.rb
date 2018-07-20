require_relative 'config/environment'
require "pry"

class App < Sinatra::Base

  get "/reversename/:name" do
    params[:name].reverse
  end

  get "/square/:number" do
    num = params[:number].to_i
    square = num * num
    square.to_s
  end

  get "/say/:number/:phrase" do
    params[:phrase] * params[:number].to_i
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    string = params.map { |key, value| value }.join(" ")
    string.concat(".")
  end

  get "/:operation/:number1/:number2" do
    case params[:operation]
    when "add"
      params[:number1] + params[:number2]
    when "subtract"
      params[:number1] - params[:number2]
    when "multiply"
      params[:number1] * params[:number2]
    end
  end

end
