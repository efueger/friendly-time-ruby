$LOAD_PATH.push File.expand_path("../lib", __FILE__)
require 'version'

Gem::Specification.new do |spec|
  spec.name          = "friendly_time"
  spec.version       = Friendly_Time::VERSION
  spec.authors       = ["bellabling"]
  spec.email         = ["barry.drinkwater@gmail.com"]

  spec.summary       = %q{Provides casual time strings, such as "about a minute ago"}
  spec.homepage      = "https://github.com/bellabling/friendly-time-ruby"
  spec.license       = "MIT"

  spec.files         = ["lib/friendly_time.rb", "lib/version.rb"]
  spec.bindir        = "bin"
  spec.executables   = "friendly_time"
  spec.require_paths = "lib"
  
  spec.add_development_dependency("rake","~> 11.3")
  spec.add_development_dependency("rspec","~> 3.5")

end