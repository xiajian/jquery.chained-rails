# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'chained/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "chained-rails"
  spec.version       = Chained::Rails::VERSION
  spec.authors       = ["xiajian"]
  spec.email         = ["jhqy2011@gmail.com"]

  spec.summary       = %q{Simple chained selects with jQuery or Zepto}
  spec.description   = %q{Chained is simple chained selects plugin. It works with both jQuery and Zepto. Use class based version if you do not want to make external queries. It uses HTML class names of select options to decide content. To create selects from AJAX queries use remote version instead. This version makes an external AJAX query and uses the returned JSON to build child selects.}
  spec.homepage      = "https://github.com/tuupola/jquery_chained"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  unless spec.respond_to?(:metadata)
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end
