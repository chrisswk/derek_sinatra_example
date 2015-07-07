# Require config/environment.rb
#ru stands for rackup.

require ::File.expand_path('../config/environment',  __FILE__)

set :app_file, __FILE__

run Sinatra::Application
