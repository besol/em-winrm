# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "em-winrm/version"

Gem::Specification.new do |s|
  s.name        = "em-winrm"
  s.version     = EventMachine::WinRM::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Seth Chisamore"]
  s.email       = ["schisamo@opscode.com"]
  s.homepage    = "http://github.com/schisamo/em-winrm"
  s.summary     = %q{EventMachine based, asynchronous parallel WinRM client}
  s.description = s.summary

  s.rubyforge_project = "em-winrm"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "eventmachine", ">= 1.0.0.beta.2"
  s.add_dependency "winrm", ">= 1.0.0rc1"
  s.add_dependency "mixlib-log", ">= 1.2.0"
end