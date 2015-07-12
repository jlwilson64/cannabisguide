# -*- encoding: utf-8 -*-
# stub: metamagic 3.1.7 ruby lib

Gem::Specification.new do |s|
  s.name = "metamagic"
  s.version = "3.1.7"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Lasse Bunk"]
  s.date = "2015-03-31"
  s.description = "Metamagic is a simple Ruby on Rails plugin for creating meta tags."
  s.email = ["lassebunk@gmail.com"]
  s.homepage = "http://github.com/lassebunk/metamagic"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.5"
  s.summary = "Simple Ruby on Rails plugin for creating meta tags."

  s.installed_by_version = "2.4.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, [">= 3.0.0"])
      s.add_development_dependency(%q<sqlite3>, [">= 0"])
    else
      s.add_dependency(%q<rails>, [">= 3.0.0"])
      s.add_dependency(%q<sqlite3>, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>, [">= 3.0.0"])
    s.add_dependency(%q<sqlite3>, [">= 0"])
  end
end
