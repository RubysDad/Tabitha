require 'tabitha/version'
require 'tabitha/array'

module Tabitha
  class Application
    def call(env)
      # `echo debug > debug.txt`;
      [200, { 'Content-Type' => 'text/html' },
       ['Hello from the Tabitha Framework']]
    end
  end
end
