# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rpush/plugin/honeybadger/version'

Gem::Specification.new do |spec|
  spec.name          = "rpush-plugin-honeybadger"
  spec.version       = Rpush::Plugin::Honeybadger::VERSION
  spec.authors       = ["Benjamin Curtis"]
  spec.email         = ["benjamin.curtis@gmail.com"]
  spec.summary       = %q{Honeybadger plugin for Rpush.}
  spec.description   = %q{Report Rpush errors to Honeybadger.}
  spec.homepage      = "https://github.com/rpush/rpush-plugin-honeybadger"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "honeybadger"
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
