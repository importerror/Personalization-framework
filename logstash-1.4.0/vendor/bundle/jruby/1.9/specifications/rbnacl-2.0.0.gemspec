# -*- encoding: utf-8 -*-
# stub: rbnacl 2.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "rbnacl"
  s.version = "2.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Tony Arcieri", "Jonathan Stott"]
  s.cert_chain = ["-----BEGIN CERTIFICATE-----\nMIIDbDCCAlSgAwIBAgIBATANBgkqhkiG9w0BAQUFADA+MRAwDgYDVQQDDAdiYXNj\ndWxlMRUwEwYKCZImiZPyLGQBGRYFZ21haWwxEzARBgoJkiaJk/IsZAEZFgNjb20w\nHhcNMTMwMzA4MDYwNzA1WhcNMTQwMzA4MDYwNzA1WjA+MRAwDgYDVQQDDAdiYXNj\ndWxlMRUwEwYKCZImiZPyLGQBGRYFZ21haWwxEzARBgoJkiaJk/IsZAEZFgNjb20w\nggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQC8S9Y1eahE5w/b0P1jVbO4\nnZbGwJGnGUTPPujZZfCXdkJu1pa8MvsU+pzgm051/yy9bWUp5eMTIjP9Qg+v92gK\nbfjiUoVwAqISW7zD98gbXwdOgcbCjPFfdP7XmAlxbmq0/T+kYXVngfYo737SukWz\n/3LLzfmtzBAZipJhTL3EAvlD2O2n2m/JARtxUwHjohd5199BBrSgbjKBXrbZ159F\nrJzDZef9SLCeXbVL218C4Z4Yf3QvOAvlkBQbYZmD0jnivAvXaoylZnCgIpGUnEiA\nC3raBW2/zMeKZC7dxygqezxwKiA/u4rxeCK3XDwYlRkF35UtAyIbIJYGODJL4MR9\nAgMBAAGjdTBzMAkGA1UdEwQCMAAwCwYDVR0PBAQDAgSwMB0GA1UdDgQWBBRP3DGA\nNBCsdSMAHGzKpylnYy90ejAcBgNVHREEFTATgRFiYXNjdWxlQGdtYWlsLmNvbTAc\nBgNVHRIEFTATgRFiYXNjdWxlQGdtYWlsLmNvbTANBgkqhkiG9w0BAQUFAAOCAQEA\nNhP3rks+x49coXHS0vPPxXb7V0HDnuYP5R+pN1+T2Z7D4qwJKjEF4EC8mQYtwcNe\nQquz1t9Uxtr7i3QqjnwhNKlIVig1nikNF+FnApjYs4mwAtMHn77WOwx8wkn7ykej\n7sF7dRE+BLgpJ88/ycnA6zsEiSQVcIMDVpiYUqUBx+MDNnq5jw5dI0Kct8vBirNA\nQiZB6YQD1raVKUTpRubo4i0SnGpbMSxMy+YreqwNQiWG9iWCbp0JJWaOPSYTeQHe\n3L/NVZQttSvxjd+WF6mA9yeCjpomboQMP36GRIZ30SoOVPMGvZ/+QpW52QU7mJW5\nGzWyf92p0uscgUZVTYixjg==\n-----END CERTIFICATE-----\n"]
  s.date = "2013-11-07"
  s.description = "Ruby binding to the Networking and Cryptography (NaCl) library"
  s.email = ["tony.arcieri@gmail.com", "jonathan.stott@gmail.com"]
  s.homepage = "https://github.com/cryptosphere/rbnacl"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.1.9"
  s.summary = "The Networking and Cryptography (NaCl) library provides a high-level toolkit for building cryptographic systems and protocols"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<ffi>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 2.14"])
    else
      s.add_dependency(%q<ffi>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 2.14"])
    end
  else
    s.add_dependency(%q<ffi>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 2.14"])
  end
end
