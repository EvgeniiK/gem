$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "solidus_klarna_gem/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "solidus_klarna_gem"
  s.version     = SolidusKlarnaGem::VERSION
  s.authors     = ["EvgeniiK"]
  s.email       = ["lordlenoks@gmail.com"]
  s.homepage    = '' #"TODO"
  s.summary     = '' #"TODO: Summary of SolidusKlarnaGem."
  s.description = '' #TODO: Description of SolidusKlarnaGem."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.6"
  s.add_dependency "solidus_frontend", ">= 1.3.0.a", "< 2.0"

  s.add_development_dependency "sqlite3"
  # s.add_development_dependency "pry-byebug"
end
