require 'rack'
require_relative 'src/rack_dispatcher'

run RackDispatcher.new(Rack::Request)
