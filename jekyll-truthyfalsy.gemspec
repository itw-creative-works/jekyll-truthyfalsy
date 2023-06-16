# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jekyll-truthyfalsy/version'

Gem::Specification.new do |spec|
  # Gem info
  spec.name = "jekyll-truthyfalsy"
  spec.version = Jekyll::TruthyFalsy::VERSION

  # Author info
  spec.authors = ["ITW Creative Works"]
  spec.email = ["hello@itwcreativeworks.com"]

  # Gem details
  spec.summary = "A Jekyll plugin that adds JavaScript-like truthy and falsy checks"
  spec.description = "A simple Jekyll plugin that adds JavaScript-like istruthy and isfalsy filters to Liquid"
  spec.homepage = "https://github.com/itw-creative-works/jekyll-truthyfalsy"
  spec.license = "MIT"

  # Files
  spec.files = Dir["CODE_OF_CONDUCT.md", "README*.md", "LICENSE", "Rakefile", "*.gemspec", "Gemfile", "lib/**/*", "spec/**/*"]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  # Gem requires Jekyll to work
  spec.add_runtime_dependency "jekyll", ">= 3.0", "< 5.0"

  # Development requires more
  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake", "~> 10.4"
  spec.add_development_dependency "rspec", "~> 3.0"

  # Ruby version
  spec.required_ruby_version = ">= 2.0.0"
end
