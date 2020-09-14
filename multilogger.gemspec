# frozen_string_literal: true

require './lib/version'

Gem::Specification.new do |s|
  s.name             = 'MultiLogger'
  s.version          = MultiLogger::VERSION
  s.license          = 'BSD'
  s.required_ruby_version = '>= 2.4.0'

  s.summary          = 'Logging with multiple loggers'
  s.description      = 'MultiLogger: a data structure to store and use multiple loggers as one.'

  s.authors          = ['Basil Salman', 'Yan Vugenfirer']
  s.email            = 'yvugenfi@redhat.com'
  s.homepage         = 'https://github.com/HCK-CI/multilogger'

  all_files          = `git ls-files -z`.split("\x0")
  s.files            = all_files.grep(/^(lib)/)
  s.require_paths    = ['lib']

  s.extra_rdoc_files = %w[README.md LICENSE]

  s.add_runtime_dependency('bundler',    '~> 1.16')
  s.add_runtime_dependency('rdoc',       '~> 4.1')
  s.add_runtime_dependency('rubocop',    '~> 0.57')
end
