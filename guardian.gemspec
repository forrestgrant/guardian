# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'guardian/version'

Gem::Specification.new do |gem|
  gem.name          = "guardian"
  gem.version       = Guardian::VERSION
  gem.authors       = ["Forrest Grant"]
  gem.email         = ["forrest@forrestgrant.com"]
  gem.description   = "Protect web forms form spam."
  gem.homepage      = "https://github.com/forrestgrant/guardian"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
