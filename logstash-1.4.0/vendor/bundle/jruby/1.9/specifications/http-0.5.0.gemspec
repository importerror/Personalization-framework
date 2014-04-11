# -*- encoding: utf-8 -*-
# stub: http 0.5.0 ruby lib

Gem::Specification.new do |s|
  s.name = "http"
  s.version = "0.5.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Tony Arcieri"]
  s.date = "2013-09-14"
  s.description = "HTTP so awesome it will lure Catherine Zeta Jones into your unicorn petting zoo"
  s.email = ["tony.arcieri@gmail.com"]
  s.homepage = "https://github.com/tarcieri/http"
  s.require_paths = ["lib"]
  s.rubygems_version = "2.1.9"
  s.summary = "HTTP should be easy"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<http_parser.rb>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 2.11"])
      s.add_development_dependency(%q<json>, [">= 0"])
    else
      s.add_dependency(%q<http_parser.rb>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 2.11"])
      s.add_dependency(%q<json>, [">= 0"])
    end
  else
    s.add_dependency(%q<http_parser.rb>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 2.11"])
    s.add_dependency(%q<json>, [">= 0"])
  end
end
