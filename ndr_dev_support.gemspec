lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ndr_dev_support/version'

Gem::Specification.new do |spec|
  spec.name          = 'ndr_dev_support'
  spec.version       = NdrDevSupport::VERSION
  spec.authors       = ['NCRS Development Team']
  spec.email         = []
  spec.summary       = 'NDR Developer Support library'
  spec.description   = 'Provides support to developers of NDR projects'
  spec.homepage      = 'https://github.com/PublicHealthEngland/ndr_dev_support'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.2'

  spec.add_dependency 'pry'

  # Audit dependencies:
  spec.add_dependency 'highline', '>= 1.6.0'

  # Rubocop dependencies:
  spec.add_dependency 'parser'
  spec.add_dependency 'rainbow'
  spec.add_dependency 'rubocop', '0.52.1'

  # Integration test dependencies:
  spec.add_dependency 'capybara'
  spec.add_dependency 'capybara-screenshot'
  spec.add_dependency 'chromedriver-helper'
  spec.add_dependency 'poltergeist', '>= 1.8.0'
  spec.add_dependency 'selenium-webdriver'

  # CI server dependencies:
  spec.add_dependency 'activesupport', '< 6.0.0'
  spec.add_dependency 'brakeman', '>= 4.2.0'
  spec.add_dependency 'bundler-audit'
  spec.add_dependency 'github-linguist'
  spec.add_dependency 'prometheus-client'
  spec.add_dependency 'rugged'

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'minitest', '~> 5.0'
  spec.add_development_dependency 'mocha'
  spec.add_development_dependency 'rake', '~> 10.0'
end
