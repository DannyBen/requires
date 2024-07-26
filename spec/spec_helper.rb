unless ENV['NOCOV']
  require 'simplecov'

  SimpleCov.start do
    enable_coverage :branch
    coverage_dir 'spec/coverage'
  end
end

require 'rubygems'
require 'bundler'
Bundler.require :default, :development

require_relative 'spec_mixin'

RSpec.configure do |c|
  c.include SpecMixin
end
