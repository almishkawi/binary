
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "binary/version"

Gem::Specification.new do |spec|
  spec.name                  = "binary"
  spec.version               = Binary::VERSION
  spec.authors               = ["Mo Almishkawi"]
  spec.email                 = ["mo@almishkawi.me"]
  spec.required_ruby_version = '~> 2.0'

  spec.summary               = "Convert a number into a binary or convert a binary into a number"
  spec.description           = "Takes integers and returns binaries or takes binaries and returns numbers and some other methods"
  spec.homepage              = ""
  spec.license               = "MIT"

  spec.files                 = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir                = "exe"
  spec.executables           = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths         = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
