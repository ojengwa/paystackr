# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'paystack/version'

Gem::Specification.new do |spec|
  spec.name          = "paystackr"
  spec.version       = Paystack::VERSION
  spec.authors       = ["Bernard Ojengwa"]
  spec.email         = ["bernardojengwa@gmail.com"]

  spec.summary       = "A Ruby gem wrapper for Paystack API"
  spec.homepage      = "https://github.com/ojengwa/paystackr.git"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
