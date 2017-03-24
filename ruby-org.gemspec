# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruby/org/version'

Gem::Specification.new do |spec|
  spec.name          = "ruby-org"
  spec.version       = Org::VERSION
  spec.authors       = ["Tobias Fankhänel"]
  spec.email         = ["8aviav@gmail.com"]

  spec.summary       = %q{Interface with Org Mode files from Ruby}
  spec.description   = %q{Interface with Org Mode files from Ruby}
  spec.homepage      = "https://www.github.com/aviav/ruby-org"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
