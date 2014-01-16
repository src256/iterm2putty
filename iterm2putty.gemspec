# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'iterm2putty/version'

Gem::Specification.new do |spec|
  spec.name          = "iterm2putty"
  spec.version       = Iterm2putty::VERSION
  spec.authors       = ["src"]
  spec.email         = ["src@srcw.net"]
  spec.description   = %q{putty color scheme generator}
  spec.summary       = %q{putty color scheme generator}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "plist", "~> 3.1.0"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
