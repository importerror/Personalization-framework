# -*- encoding: utf-8 -*-
# stub: ci_reporter 1.9.1 ruby lib

Gem::Specification.new do |s|
  s.name = "ci_reporter"
  s.version = "1.9.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Nick Sieger"]
  s.date = "2013-12-26"
  s.description = "CI::Reporter is an add-on to Test::Unit, RSpec and Cucumber that allows you to generate XML reports of your test, spec and/or feature runs. The resulting files can be read by a continuous integration system that understands Ant's JUnit report XML format, thus allowing your CI system to track test/spec successes and failures."
  s.email = "nick@nicksieger.com"
  s.extra_rdoc_files = ["History.txt", "LICENSE.txt", "Manifest.txt", "README.rdoc"]
  s.files = ["History.txt", "LICENSE.txt", "Manifest.txt", "README.rdoc"]
  s.homepage = "http://caldersphere.rubyforge.org/ci_reporter"
  s.licenses = ["MIT"]
  s.rdoc_options = ["--main", "README.rdoc", "-SHN", "-f", "darkfish"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "caldersphere"
  s.rubygems_version = "2.1.9"
  s.summary = "CI::Reporter allows you to generate reams of XML for use with continuous integration systems."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<builder>, [">= 2.1.2"])
      s.add_development_dependency(%q<rubyforge>, [">= 2.0.4"])
      s.add_development_dependency(%q<rdoc>, ["~> 4.0"])
      s.add_development_dependency(%q<hoe-git>, ["~> 1.5.0"])
      s.add_development_dependency(%q<cucumber>, [">= 1.3.3"])
      s.add_development_dependency(%q<rspec>, ["> 2.0.0"])
      s.add_development_dependency(%q<test-unit>, ["> 2.4.9"])
      s.add_development_dependency(%q<minitest>, ["~> 2.2.0"])
      s.add_development_dependency(%q<spinach>, [">= 0.8.7"])
      s.add_development_dependency(%q<hoe>, ["~> 3.7"])
    else
      s.add_dependency(%q<builder>, [">= 2.1.2"])
      s.add_dependency(%q<rubyforge>, [">= 2.0.4"])
      s.add_dependency(%q<rdoc>, ["~> 4.0"])
      s.add_dependency(%q<hoe-git>, ["~> 1.5.0"])
      s.add_dependency(%q<cucumber>, [">= 1.3.3"])
      s.add_dependency(%q<rspec>, ["> 2.0.0"])
      s.add_dependency(%q<test-unit>, ["> 2.4.9"])
      s.add_dependency(%q<minitest>, ["~> 2.2.0"])
      s.add_dependency(%q<spinach>, [">= 0.8.7"])
      s.add_dependency(%q<hoe>, ["~> 3.7"])
    end
  else
    s.add_dependency(%q<builder>, [">= 2.1.2"])
    s.add_dependency(%q<rubyforge>, [">= 2.0.4"])
    s.add_dependency(%q<rdoc>, ["~> 4.0"])
    s.add_dependency(%q<hoe-git>, ["~> 1.5.0"])
    s.add_dependency(%q<cucumber>, [">= 1.3.3"])
    s.add_dependency(%q<rspec>, ["> 2.0.0"])
    s.add_dependency(%q<test-unit>, ["> 2.4.9"])
    s.add_dependency(%q<minitest>, ["~> 2.2.0"])
    s.add_dependency(%q<spinach>, [">= 0.8.7"])
    s.add_dependency(%q<hoe>, ["~> 3.7"])
  end
end
