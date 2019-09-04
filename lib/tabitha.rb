require 'tabitha/version'
require 'tabitha/routing'
require 'tabitha/array'

module Tabitha
  class Application
    def call(env)
      # `echo debug > debug.txt`;
      # [200, { 'Content-Type' => 'text/html' },
      #  ['Hello from the Tabitha Framework']]

      klass, action = get_controller_and_action(env)
      controller = klass.new(env)
      text = controller.send(action)
      [200, { 'Content-Type' => 'text/html' }, [text]]

      # @request = Rack::Request.new(env)
      # case @request.path
      # when '/'
      #   [200, { 'Content-Type' => 'text/html' },
      #    ['Hello from the Tabitha Framework']]
      # when '/husband'
      #   Rack::Response.new do |response|
      #     response.set_cookie('husband', 'Mark says Hi')
      #   end
      # else
      #   Rack::Response.new("Not Found", 404)
      # end
    end
  end

  class Controller
    def initialize(env)
      @env = env
    end

    def env
      @env
    end
  end
end
