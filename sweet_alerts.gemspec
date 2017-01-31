# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sweet_alerts/version'

Gem::Specification.new do |spec|
  spec.name          = "sweet_alerts"
  spec.version       = SweetAlert::VERSION
  spec.authors       = ["Rakesh.P.D"]
  spec.email         = ["errakeshpd@gmail.com"]

  spec.summary       = %q{SweetAlert is the replacement of javascript alert.}
  spec.description   = %q{A BEAUTIFUL REPLACEMENT FOR JAVASCRIPT'S "ALERT".}
  spec.homepage      = "https://github.com/errakeshpd/SweetAlert"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.files = Dir["{lib,vendor}/**/*"]
  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
