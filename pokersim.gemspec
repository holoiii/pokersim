# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "pokersim/version"

Gem::Specification.new do |s|
  s.name        = "pokersim"
  s.version     = Pokersim::VERSION
  s.authors     = ["Albert Peng"]
  s.email       = ["albert.peng@socialchorus.com"]
  s.homepage    = ""
  s.summary     = %q{Framework for simulating poker games.}
  s.description = %q{Build poker bots with ruby and have them play games with each other.}

  s.rubyforge_project = "pokersim"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_development_dependency "rspec"
  s.add_runtime_dependency "ruby-poker"
end
