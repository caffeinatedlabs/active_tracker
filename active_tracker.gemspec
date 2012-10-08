# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |gem|
  gem.name          = "Active Tracker"
  gem.version       = '0.0.1'
  gem.authors       = ["Nate Berkopec"]
  gem.email         = ["nate@craftcoffee.com"]
  gem.description   = 'Tools for dealing with event tracking services'
  gem.summary       = 'Active Tracker is an event tracking abstraction library used by Craft Coffee. It is written by Nate Berkopec. The goal is to offer a consistent, easy to use interface for various online event tracking services.'
  gem.homepage      = ""

  gem.add_development_dependency('pry')

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
