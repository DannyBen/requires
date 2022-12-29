require 'simplecov'
SimpleCov.start { enable_coverage :branch } unless ENV['NOCOV']

require 'rubygems'
require 'bundler'
Bundler.require :default, :development

require_relative 'spec_mixin'

RSpec.configure do |c|
  c.include SpecMixin
end
