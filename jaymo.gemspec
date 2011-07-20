# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "jaymo/version"

Gem::Specification.new do |s|
  s.name        = "jaymo"
  s.version     = Jaymo::VERSION
  s.authors     = ["Andrew Smith"]
  s.email       = ["andrew@envylabs.com"]
  s.homepage    = "http://github.com/envylabs/jaymo"
  s.summary     = %q{Introduces Rails to jQuery Mobile}
  s.description = %q{Jaymo is a Rails Engine that provides useful helpers and integrations with jQuery Mobile}

  s.rubyforge_project = "jaymo"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'jquery-rails', '~> 1.0.12'

  s.add_development_dependency 'rspec'
end
