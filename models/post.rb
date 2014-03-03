require 'sequel'

DB = Sequel.connect('mysql2://root:qwerty123@localhost/sinatra_test')

class Post < Sequel::Model
end
