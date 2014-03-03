Sequel::Model.plugin(:schema)
Sequel::Model.raise_on_save_failure = false # Do not throw exceptions on failure
Sequel::Model.db = case Padrino.env
  when :development then Sequel.connect('mysql2://root:qwerty123@localhost/sinatra_test', :loggers => [logger])
  when :production  then Sequel.connect("mysql2://root@localhost/padrino", :loggers => [logger])
  when :test        then Sequel.connect("mysql2://root@localhost/padrino", :loggers => [logger])
end
