lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'date'

Gem::Specification.new do |s|
  s.name        = 'requires'
  s.version     = '0.2.0'
  s.date        = Date.today.to_s
  s.summary     = "Ruby's missing require function"
  s.description = "A simple gem to require them all!"
  s.authors     = ["Danny Ben Shitrit"]
  s.email       = 'db@dannyben.com'
  s.files       = Dir['README.md', 'lib/**/*.*']
  s.homepage    = 'https://github.com/dannyben/requires'
  s.license     = 'MIT'
  s.required_ruby_version = ">= 2.3.0"
end
