require './app.rb'

use Rack::ShowExceptions

run Sinatra::Application.new
