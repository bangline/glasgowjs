require 'bundler'
Bundler.require
require 'rdiscount'

require './fixnum_extensions'
require './glasgowjs'

run Sinatra::Application