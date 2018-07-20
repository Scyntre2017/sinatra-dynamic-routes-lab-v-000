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
    binding.pry
    params[:number].to_i.times do
      params[:phrase]
    end
  end

end
