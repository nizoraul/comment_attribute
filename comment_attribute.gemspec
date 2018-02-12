$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "comment_attribute/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "comment_attribute"
  s.version     = CommentAttribute::VERSION
  s.authors     = ["nizoraul"]
  s.email       = ["nizoraul@gmail.com"]
  s.homepage    = "http://"
  s.summary     = "Summary of CommentAttribute."
  s.description = "Description of CommentAttribute."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.0"

  s.add_development_dependency "mysql2"
  s.add_development_dependency "rspec-rails"
end
