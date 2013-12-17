# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'snippy/version'

Gem::Specification.new do |spec|
  spec.name          = "snippy"
  spec.version       = Snippy::VERSION
  spec.authors       = ["franklin"]
  spec.email         = ["franklin@weareinteractive.com"]
  spec.description   = %q{Gem with some useful command line tools.}
  spec.summary       = %q{Command line snippets.}
  spec.homepage      = "http://rubygems.org/gems/snippy"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "git"
  spec.add_runtime_dependency "thor"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
