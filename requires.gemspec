lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'requires/version'

Gem::Specification.new do |s|
  s.name        = 'requires'
  s.version     = VERSION
  s.summary     = 'Require all files in a directory'
  s.description = 'Adds functions that allow requiring a direcotry'
  s.authors     = ['Danny Ben Shitrit']
  s.email       = 'db@dannyben.com'
  s.files       = Dir['README.md', 'lib/**/*.*']
  s.homepage    = 'https://github.com/dannyben/requires'
  s.license     = 'MIT'

  s.required_ruby_version = '>= 3.0'
  s.metadata = {
    'bug_tracker_uri'       => 'https://github.com/DannyBen/requires/issues',
    'changelog_uri'         => 'https://github.com/DannyBen/requires/blob/master/CHANGELOG.md',
    'source_code_uri'       => 'https://github.com/DannyBen/requires',
    'rubygems_mfa_required' => 'true',
  }
end
