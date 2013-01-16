# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'line_send_button/version'

Gem::Specification.new do |gem|
  gem.name          = "line_send_button"
  gem.version       = LineSendButton::VERSION
  gem.authors       = ["kengos"]
  gem.email         = ["kengo@kengos.jp"]
  gem.description   = %q{LINE Send button helper}
  gem.summary       = %q{LINE Send button helper}
  gem.homepage      = ""
  gem.files = Dir["lib/**/*"] + Dir["vendor/**/*"] + ["Rakefile", "README.md"]
  gem.add_dependency 'rails',    '>= 3.1'
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^spec/})
  gem.require_paths = ["lib"]
end
