require 'rack/test'
require 'rspec'

ENV['MS_DB_ADAPTER'] = 'sqlite3'
ENV['MS_DB_CATALOG'] = ':memory:'

require_relative '../main.rb'
MiniStore.init_schema

module RSpecMixin
  include Rack::Test::Methods
  def app
    Sinatra::Application
  end
end

RSpec.configure { |c| c.include RSpecMixin }
