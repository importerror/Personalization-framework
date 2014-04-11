# -*- encoding: utf-8 -*-
# stub: metriks 0.9.9.6 ruby lib

Gem::Specification.new do |s|
  s.name = "metriks"
  s.version = "0.9.9.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Eric Lindvall"]
  s.date = "2014-02-24"
  s.description = "An experimental metrics client."
  s.email = "eric@sevenscale.com"
  s.extra_rdoc_files = ["README.md", "LICENSE"]
  s.files = ["README.md", "LICENSE"]
  s.homepage = "https://github.com/eric/metriks"
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.1.9"
  s.summary = "An experimental metrics client"

  if s.respond_to? :specification_version then
    s.specification_version = 2

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<atomic>, ["~> 1.0"])
      s.add_runtime_dependency(%q<hitimes>, ["~> 1.1"])
      s.add_runtime_dependency(%q<avl_tree>, ["~> 1.1.2"])
      s.add_development_dependency(%q<mocha>, ["~> 0.10"])
    else
      s.add_dependency(%q<atomic>, ["~> 1.0"])
      s.add_dependency(%q<hitimes>, ["~> 1.1"])
      s.add_dependency(%q<avl_tree>, ["~> 1.1.2"])
      s.add_dependency(%q<mocha>, ["~> 0.10"])
    end
  else
    s.add_dependency(%q<atomic>, ["~> 1.0"])
    s.add_dependency(%q<hitimes>, ["~> 1.1"])
    s.add_dependency(%q<avl_tree>, ["~> 1.1.2"])
    s.add_dependency(%q<mocha>, ["~> 0.10"])
  end
end
