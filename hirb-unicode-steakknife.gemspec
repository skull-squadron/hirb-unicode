dir = File.expand_path("../lib", __FILE__)
$:.push(dir) unless $:.include?(dir)
require "hirb/unicode/version"

Gem::Specification.new do |s|
  s.name        = "hirb-unicode-steakknife"
  s.version     = Hirb::Unicode::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["steakknife", "miaout17"]
  s.email       = ["barry.allard@gmail.com", "miaout17 at gmail dot com"]
  s.homepage    = ""
  s.summary     = %q{Unicode support for hirb}
  s.description = %q{Unicode support for hirb}

  s.add_dependency 'hirb', '~> 0.5'
  s.add_dependency 'unicode-display_width', '>= 1.1'
  # Use the same test utility as `hirb`
  s.add_development_dependency 'bacon', '1.1.0'
  s.add_development_dependency 'mocha', '~> 0.11'
  s.add_development_dependency 'mocha-on-bacon'
  s.add_development_dependency 'bacon-bits', '0.1.0'
  s.add_development_dependency 'rake'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ["lib"]
end
