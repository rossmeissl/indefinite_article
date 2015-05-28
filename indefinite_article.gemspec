# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "indefinite_article/version"

Gem::Specification.new do |s|
  s.name        = "indefinite_article"
  s.version     = IndefiniteArticle::VERSION
  s.authors     = ["Andrew Rossmeissl", 'Shane Brinkman-Davis']
  s.email       = ["andy@rossmeissl.net"]
  s.homepage    = "http://github.com/rossmeissl/indefinite_article"
  s.summary     = %q{Adds indefinite article methods to String and Symbol}
  s.description = %q{Adds indefinite article methods to String and Symbol}

  s.files         = [
    'indefinite_article.gemspec',
    'lib/indefinite_article.rb',
    'lib/indefinite_article/version.rb'
  ]
  s.test_files    = [
    'test/test_indefinite_article.rb'
  ]

  s.require_paths = ["lib"]
  s.add_dependency 'activesupport'
  s.add_development_dependency 'minitest', '~> 5.1'
  s.add_development_dependency 'i18n'
  s.add_development_dependency 'rake'
end
