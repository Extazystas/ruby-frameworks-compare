require 'goliath'
require 'goliath/rack/templates'
require 'slim'
require './models/post'

class App < Goliath::API
  include Goliath::Rack::Templates

  def response(env)
    # @post = Post.first
    [200, {}, 'text']
  end
end
