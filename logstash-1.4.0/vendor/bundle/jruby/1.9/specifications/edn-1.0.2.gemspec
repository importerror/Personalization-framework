# -*- encoding: utf-8 -*-
# stub: edn 1.0.2 ruby lib

Gem::Specification.new do |s|
  s.name = "edn"
  s.version = "1.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Clinton N. Dreisbach"]
  s.date = "2013-05-24"
  s.description = "'edn implements a reader for Extensible Data Notation by Rich Hickey.'"
  s.email = ["clinton@thinkrelevance.com"]
  s.homepage = ""
  s.require_paths = ["lib"]
  s.rubygems_version = "2.1.9"
  s.summary = "'edn implements a reader for Extensible Data Notation by Rich Hickey.'"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<parslet>, ["~> 1.4.0"])
      s.add_development_dependency(%q<pry>, ["~> 0.9.10"])
      s.add_development_dependency(%q<rspec>, ["~> 2.11.0"])
      s.add_development_dependency(%q<rantly>, ["~> 0.3.1"])
      s.add_development_dependency(%q<rake>, ["~> 10.0.3"])
    else
      s.add_dependency(%q<parslet>, ["~> 1.4.0"])
      s.add_dependency(%q<pry>, ["~> 0.9.10"])
      s.add_dependency(%q<rspec>, ["~> 2.11.0"])
      s.add_dependency(%q<rantly>, ["~> 0.3.1"])
      s.add_dependency(%q<rake>, ["~> 10.0.3"])
    end
  else
    s.add_dependency(%q<parslet>, ["~> 1.4.0"])
    s.add_dependency(%q<pry>, ["~> 0.9.10"])
    s.add_dependency(%q<rspec>, ["~> 2.11.0"])
    s.add_dependency(%q<rantly>, ["~> 0.3.1"])
    s.add_dependency(%q<rake>, ["~> 10.0.3"])
  end
end
