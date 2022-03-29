require "rubygems"
require "bundler"

Bundler.require(:default)
Bundler.require(Sinatra::Base.environment)

require "active_support/deprecation"
require "active_support/all"

$db = []

require "./app/clinickr_app.rb"