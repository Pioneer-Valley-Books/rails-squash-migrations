# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name = 'rails-squash-migrations'
  spec.version = '1.0.0'
  spec.licenses = ['MIT']
  spec.summary = 'Squash Rails migrations'
  spec.authors = ['Pioneer Valley Books']
  spec.description = File.read('README.md')

  spec.executables = ['rails-squash-migrations']

  spec.homepage = 'https://github.com/Pioneer-Valley-Books/rails-squash-migrations'
  spec.metadata = { 'rubygems_mfa_required' => 'true' }
  spec.required_ruby_version = '>=3.2'
end
