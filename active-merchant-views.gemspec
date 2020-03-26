# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'version'

Gem::Specification.new do |spec|
  spec.name          = 'active-merchant-views'
  spec.version       = ActiveMerchantViews::VERSION
  spec.authors       = ['Abhilash Reddy']
  spec.email         = ['abhilash.reddy@nfp.com']
  spec.summary       = 'Activemerchant Views'
  spec.description   = 'Always load views for payment processing directly from payment gateway service provider to remain PCI compliant.'
  spec.homepage      = 'https://github.com/abhi4nfp/active-merchant-views'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.3.0'
  spec.add_development_dependency 'rake', '~> 12.3.3'
end
