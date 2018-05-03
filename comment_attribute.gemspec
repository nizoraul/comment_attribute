$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "comment_attribute/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "comment_attribute"
  s.version     = CommentAttribute::VERSION
  s.authors     = ["nizoraul"]
  s.email       = ["nizoraul@gmail.com"]
  s.homepage    = "https://github.com/nizoraul/comment_attribute"
  s.summary     = "DBのコメントでActiverecordの要素にアクセス"
  s.description = "Activerecordを拡張してDBのコメントを利用してAttributeへのアクセスを可能とするgem"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.0"

  s.add_development_dependency "mysql2", "< 0.5"
  s.add_development_dependency "rspec-rails"
end
