require 'sinatra'
require './models/post.rb'
# require 'slim'

# set :server, %w[unicorn]

get '/' do
  @post = Post.first
  'Hello, world!!!'
end
