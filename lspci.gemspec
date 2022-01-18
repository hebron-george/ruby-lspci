
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "lspci/version"

Gem::Specification.new do |spec|
  spec.name          = "lspci"
  spec.version       = Lspci::VERSION
  spec.authors       = ["Hebron George"]
  spec.email         = ["hebrontgeorge@gmail.com"]

  spec.summary       = %q{`lspci -vmm` parser}
  spec.description   = spec.summary
  spec.homepage      = 'https://github.com/hebron-george/ruby-lspci'
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", ">= 2.2.33"
  spec.add_development_dependency "rake", ">= 12.3.3"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"

  spec.add_dependency 'activesupport'
end
