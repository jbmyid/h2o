# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'h20/version'

Gem::Specification.new do |gem|
  gem.name          = "h20"
  gem.version       = H20::VERSION
  gem.authors       = ["Jalendra Bhanarkar"]
  gem.email         = ["jbmyid@gmail.com"]
  gem.description   = "Helful while handelling with api in json and hash format"
  gem.summary       = "Converts hash to objects"
  gem.homepage      = "https://github.com/jbmyid/h2o"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.add_runtime_dependency "json"
  gem.add_dependency('json', '>= 1.5.3')
end
