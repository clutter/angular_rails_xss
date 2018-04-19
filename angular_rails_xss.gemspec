$:.push File.expand_path('../lib', __FILE__)

require 'angular_rails_xss/version'

Gem::Specification.new do |spec|
  spec.name          = 'angular_rails_xss'
  spec.version       = AngularRailsXSS::VERSION
  spec.authors       = ['Kevin Sylvestre']
  spec.email         = ['kevin@ksylvest.com']

  spec.summary       = %(Safer Angular with Rails)
  spec.description   = %(Modify CGI.escapeHTML to escape '{{}}' interpolation.)
  spec.homepage      = 'https://github.com/clutter/angular_rails_xss'

  spec.files         = Dir['{lib}/**/*', 'LICENSE', 'Rakefile', 'README.md']
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rspec_junit_formatter'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'simplecov'
end
