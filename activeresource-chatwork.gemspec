# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'chatwork/version'

Gem::Specification.new do |spec|
  spec.name          = "activeresource-chatwork"
  spec.version       = Chatwork::VERSION
  spec.authors       = ["Leko"]
  spec.email         = ["leko.noor@gmail.com"]

  spec.summary       = %q{ActiveResource classes for Chatwork API}
  spec.homepage      = "https://github.com/Leko/activeresource-chatwork"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "activeresource"
  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "dotenv"
end
