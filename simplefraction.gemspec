# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'simplefraction/version'

Gem::Specification.new do |spec|
	spec.name          = "simplefraction"
	spec.version       = Simplefraction::VERSION
	spec.authors       = ["Punknoodles"]

	spec.summary       = %q{Gem for creating and manipulating fractions.}
	spec.description   = %q{Gem for creating and manipulating fractions.}
	spec.homepage      = "https://www.github.com/Punknoodles/simplefraction"
	spec.license       = "MIT"

	spec.files         = `git ls-files -z`.split("\x0").reject do |f|
		f.match(%r{^(test|spec|features)/})
	end
	spec.bindir        = "exe"
	spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
	spec.require_paths = ["lib"]

	spec.add_development_dependency "bundler", "~> 1.13"
	spec.add_development_dependency "rake", "~> 10.0"
	spec.add_development_dependency "rspec", "~> 3.0"
end
