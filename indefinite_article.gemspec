# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "indefinite_article/version"

Gem::Specification.new do |s|
  s.name        = "indefinite_article"
  s.version     = IndefiniteArticle::VERSION
  s.authors     = ["Kevin English"]
  s.email       = ["kenglish@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Adds indefinite article methods to String and Symbol}
  s.description = %q{Adds indefinite article methods to String and Symbol}

  s.rubyforge_project = "indefinite_article"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, ['>= 3.0.1'])
      s.add_runtime_dependency(%q<i18n>, ['~>0.5.0'])

      s.add_development_dependency(%q<activesupport>,['>= 3.0.1'])
      s.add_development_dependency(%q<i18n>, ['~>0.5.0'])
    else
      s.add_dependency(%q<activesupport>, ['>= 3.0.1'])
      s.add_dependency(%q<i18n>, ['~>0.5.0'])
    end
  else
    s.add_dependency(%q<activesupport>, ['>= 3.0.1'])
    s.add_dependency(%q<i18n>, ['~>0.5.0'])
  end


end
