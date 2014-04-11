# -*- encoding: utf-8 -*-
# stub: ffi-rzmq 1.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "ffi-rzmq"
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Chuck Remes"]
  s.date = "2013-01-24"
  s.description = "This gem wraps the ZeroMQ networking library using the ruby FFI (foreign\nfunction interface). It's a pure ruby wrapper so this gem can be loaded\nand run by any ruby runtime that supports FFI. That's all of the major ones -\nMRI, Rubinius and JRuby."
  s.email = ["git@chuckremes.com"]
  s.homepage = "http://github.com/chuckremes/ffi-rzmq"
  s.require_paths = ["lib"]
  s.rubyforge_project = "ffi-rzmq"
  s.rubygems_version = "2.1.9"
  s.summary = "This gem wraps the ZeroMQ (0mq) networking library using Ruby FFI (foreign function interface)."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<ffi>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.6"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<ffi>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 2.6"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<ffi>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 2.6"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
