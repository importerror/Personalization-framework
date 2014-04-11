# -*- encoding: utf-8 -*-
# stub: simplecov 0.8.2 ruby lib

Gem::Specification.new do |s|
  s.name = "simplecov"
  s.version = "0.8.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Christoph Olszowka"]
  s.date = "2013-11-20"
  s.description = "Code coverage for Ruby 1.9+ with a powerful configuration library and automatic merging of coverage across test suites"
  s.email = ["christoph at olszowka de"]
  s.homepage = "http://github.com/colszowka/simplecov"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.1.9"
  s.summary = "Code coverage for Ruby 1.9+ with a powerful configuration library and automatic merging of coverage across test suites"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<multi_json>, [">= 0"])
      s.add_runtime_dependency(%q<simplecov-html>, ["~> 0.8.0"])
      s.add_runtime_dependency(%q<docile>, ["~> 1.1.0"])
      s.add_development_dependency(%q<appraisal>, ["~> 0.5.1"])
      s.add_development_dependency(%q<rake>, ["~> 10.0.3"])
      s.add_development_dependency(%q<rspec>, ["~> 2.13.0"])
      s.add_development_dependency(%q<shoulda>, ["~> 3.4.0"])
    else
      s.add_dependency(%q<multi_json>, [">= 0"])
      s.add_dependency(%q<simplecov-html>, ["~> 0.8.0"])
      s.add_dependency(%q<docile>, ["~> 1.1.0"])
      s.add_dependency(%q<appraisal>, ["~> 0.5.1"])
      s.add_dependency(%q<rake>, ["~> 10.0.3"])
      s.add_dependency(%q<rspec>, ["~> 2.13.0"])
      s.add_dependency(%q<shoulda>, ["~> 3.4.0"])
    end
  else
    s.add_dependency(%q<multi_json>, [">= 0"])
    s.add_dependency(%q<simplecov-html>, ["~> 0.8.0"])
    s.add_dependency(%q<docile>, ["~> 1.1.0"])
    s.add_dependency(%q<appraisal>, ["~> 0.5.1"])
    s.add_dependency(%q<rake>, ["~> 10.0.3"])
    s.add_dependency(%q<rspec>, ["~> 2.13.0"])
    s.add_dependency(%q<shoulda>, ["~> 3.4.0"])
  end
end
