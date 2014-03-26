# require 'sinatra'
# require './models/post.rb'
# # require 'slim'

# set :server, %w[webrick]

# get '/' do
#   @post = Post.first
#   'Hello, world!!!'
# end


require 'e' # or Bundler.require
require 'slim'
require './models/post.rb'

Tilt::SlimTemplate = Slim::Template

class App < E
  view_path 'views'
  layout :layout
  engine :Slim

  map '/'

  def index
    @post = Post.first
    render :index
  end
end

App.run
