source "http://rubygems.org"

# Declare your gem's dependencies in spree.gemspec.
# Bundler will treat runtime dependencies like base dependencies, and
# development dependencies will be added by default to the :development group.
gemspec

# jquery-rails is used by the dummy application
gem "jquery-rails"

gem 'spree', "~> 1.3.0"
# Declare any dependencies that are still in development here instead of in
# your gemspec. These might include edge Rails or gems from your path or
# Git. Remember to move these dependencies to your gemspec before releasing
# your gem to rubygems.org.

# To use debugger
# gem 'debugger'


gem 'pry'

group :test do
  gem 'factory_girl_rails', '~> 4.2.1'
  gem 'ffaker'
end

if ENV['SOFTR8']
  gem "ZenTest"
  gem "autotest-fsevent"
  gem "autotest-growl"
  gem "autotest-rails"
end