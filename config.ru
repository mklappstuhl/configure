require 'rubygems'
require 'bundler/setup'
require 'bourbon'
require 'sprockets'
require './app.rb'

map '/assets' do
  environment = Sprockets::Environment.new
  environment.append_path 'assets/javascripts'
  environment.append_path 'assets/stylesheets'
  environment.append_path 'assets/images'
  #environment.append_path 'vendor/assets/jquery'
  run environment
end

map '/' do
  run Configure
end
