require 'tabitha/version'

module Tabitha
  class Application
    def call(env)
      [200, { 'Content-Type' => 'text/html' },
       ['Hello from the Tabitha Framework']]
    end
  end
end
