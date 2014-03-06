require 'sinatra'
require './models/post.rb'
# require 'slim'

set :server, %w[webrick]

get '/' do
  @post = Post.first
  'Hello, world!!!'
end
