# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'friendly_time/version'

Gem::Specification.new do |spec|
  spec.name          = "friendly_time"
  spec.version       = FriendlyTime::VERSION
  spec.authors       = ["bellabling"]
  spec.email         = ["barry.drinkwater@gmail.com"]

  spec.summary       = %q{Provides casual time strings, such as "about a minute ago"}
  spec.homepage      = "https://github.com/bellabling/friendly-time-ruby"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.2"
end
