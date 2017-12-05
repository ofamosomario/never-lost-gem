# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'neverlost/version'

Gem::Specification.new do |spec|
  spec.name          = "neverlost"
  spec.version       = Neverlost::VERSION
  spec.authors       = ["Mario Augusto"]
  spec.email         = ["tkyakow@gmail.com"]

  spec.summary       = %q{Never Lost! Do a simple breadcrumbs in your projects.}
  spec.description   = %q{Never Lost is a simple breadcrumbs gem to use in your projects.}
  spec.homepage      = "https://github.com/ofamosomario/never-lost-gem"
  spec.license       = "MIT"


end