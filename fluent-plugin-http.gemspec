# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name    = 'fluent-plugin-http'
  spec.version = '1.0.0'
  spec.author  = 'Konstantin'
  spec.summary = 'Fluentd output plugin that sends event records via HTTP'
  spec.license = 'Apache-2.0'
  spec.homepage = 'https://github.com/soylent/fluent-plugin-http'

  spec.files = Dir['lib/**/*']
  spec.require_paths = 'lib'

  spec.add_runtime_dependency 'fluentd', ENV.fetch('FLUENTD_VERSION', '>= 0.12')
  spec.add_runtime_dependency 'oj', '~> 3.3'

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'pry', '~> 0.10'
  spec.add_development_dependency 'rake', '~> 11.3'
  spec.add_development_dependency 'rubocop', '~> 0.51.0'
  spec.add_development_dependency 'test-unit', '~> 3.2'
  spec.add_development_dependency 'webmock', '~> 2.1'
end
