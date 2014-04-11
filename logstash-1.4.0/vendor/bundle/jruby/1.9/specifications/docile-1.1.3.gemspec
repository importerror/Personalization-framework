# -*- encoding: utf-8 -*-
# stub: docile 1.1.3 ruby lib

Gem::Specification.new do |s|
  s.name = "docile"
  s.version = "1.1.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Marc Siegel"]
  s.date = "2014-02-04"
  s.description = "Docile turns any Ruby object into a DSL. Especially useful with the Builder pattern."
  s.email = ["msiegel@usainnov.com"]
  s.homepage = "http://ms-ati.github.com/docile/"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "docile"
  s.rubygems_version = "2.1.9"
  s.summary = "Docile keeps your Ruby DSLs tame and well-behaved"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>, ["~> 10.1.1"])
      s.add_development_dependency(%q<rspec>, ["~> 2.14.0"])
      s.add_development_dependency(%q<mime-types>, ["~> 1.25.1"])
      s.add_development_dependency(%q<yard>, [">= 0"])
      s.add_development_dependency(%q<redcarpet>, ["= 2.3.0"])
      s.add_development_dependency(%q<github-markup>, [">= 0"])
      s.add_development_dependency(%q<coveralls>, [">= 0"])
    else
      s.add_dependency(%q<rake>, ["~> 10.1.1"])
      s.add_dependency(%q<rspec>, ["~> 2.14.0"])
      s.add_dependency(%q<mime-types>, ["~> 1.25.1"])
      s.add_dependency(%q<yard>, [">= 0"])
      s.add_dependency(%q<redcarpet>, ["= 2.3.0"])
      s.add_dependency(%q<github-markup>, [">= 0"])
      s.add_dependency(%q<coveralls>, [">= 0"])
    end
  else
    s.add_dependency(%q<rake>, ["~> 10.1.1"])
    s.add_dependency(%q<rspec>, ["~> 2.14.0"])
    s.add_dependency(%q<mime-types>, ["~> 1.25.1"])
    s.add_dependency(%q<yard>, [">= 0"])
    s.add_dependency(%q<redcarpet>, ["= 2.3.0"])
    s.add_dependency(%q<github-markup>, [">= 0"])
    s.add_dependency(%q<coveralls>, [">= 0"])
  end
end
