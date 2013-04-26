$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "spree/catalogillo/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "spree-catalogillo"
  s.version     = Spree::Catalogillo::VERSION
  s.authors     = ["Edwin Cruz", "Herman Moreno"]
  s.email       = ["edwin.cruz@crowdint.com", "herman.moreno@crowdint.com"]
  s.homepage    = "https://www.github.com/softr8/spree-catalogillo"
  s.summary     = "Spree connector for catalogillo engine"
  s.description = "Spree connector, it indexes data to any rails app that uses catalogillo engine"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2.13"
  # s.add_dependency "jquery-rails"

  s.add_dependency "spree", "~> 1.3.0"
  s.add_dependency "httparty"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "factory_girl_rails"
  s.add_development_dependency "ffaker"
end
