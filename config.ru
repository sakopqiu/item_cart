# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'

run Rails.application

#
# class JSONServer
#   def call(env)
#     [200, { "Content-Type" => "application/json" }, ['{ "message" : "Hello!" }']]
#   end
# end
#
# class RackLogger
#   def initialize(app)
#     @app = app
#   end
#
#   def call(env)
#     @start = Time.now
#     @status, @headers, @body = @app.call(env)
#     @duration = ((Time.now - @start).to_f * 1000).round(2)
#
#     puts "#{env['REQUEST_METHOD']} #{env['REQUEST_PATH']} - Took: #{@duration} ms"
#     [@status, @headers, @body]
#   end
# end
#
# use RackLogger
#
# map '/hello.json' do
#   run JSONServer.new
# end
#
# map '/' do
#   run Rack::Directory.new "html"
# end
