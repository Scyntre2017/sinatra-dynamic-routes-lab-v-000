require_relative 'config/environment'
require "pry"

class App < Sinatra::Base

  get "/reversename/:name" do
    binding.pry
  end

end
