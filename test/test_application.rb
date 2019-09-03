require_relative 'test_helper'
require 'tabitha'

class TestApp < Tabitha::Application
end

class TabithaAppTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    TestApp.new
  end

  def test_request
    get '/'

    assert last_response.ok?
    body = last_response.body
    assert body['Hello']
  end

  def test_cookie
    get '/husband'

    assert last_response.ok?

  end
end