# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'authorizable/version'

Gem::Specification.new do |spec|
  spec.name          = "authorizable"
  spec.version       = Authorizable::VERSION
  spec.authors       = ["Tatsuro Baba"]
  spec.email         = ["harakirisoul@gmail.com"]
  spec.summary       = %q{Authorize any users to be able to do the feature}
  spec.homepage      = "https://github.com/tbaba/authorizable"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
