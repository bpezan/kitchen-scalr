# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kitchen/driver/scalr_version'

Gem::Specification.new do |spec|
  spec.name          = 'kitchen-scalr'
  spec.version       = Kitchen::Driver::SCALR_VERSION
  spec.authors       = ['Mohammed HAWARI', 'Aloys AUGUSTIN']
  spec.email         = ['mohammed@hawari.fr', 'aloys@scalr.com']
  spec.description   = %q{A Test Kitchen Driver for Scalr}
  spec.summary       = spec.description
  spec.homepage      = ''
  spec.license       = 'Apache-2.0'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = []
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'test-kitchen'
  spec.add_dependency 'rest-client'
  spec.add_dependency 'os'
  spec.add_dependency 'deep_merge'
  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'

  spec.add_development_dependency 'cane'
  spec.add_development_dependency 'tailor'
  spec.add_development_dependency 'countloc'
end
