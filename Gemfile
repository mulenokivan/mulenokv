source "https://rubygems.org"

ruby "3.3.0"
gem "rails", "~> 7.1.2"
gem "sprockets-rails"
gem "pg", "~> 1.1"
gem "puma", ">= 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "dartsass-rails"
gem "jbuilder"
gem "redis", ">= 4.0.1"
gem "bootsnap", require: false
gem "image_processing", "~> 1.2"
gem "friendly_id"
gem "simple_form"
gem 'annotate'
gem 'requestjs-rails'

group :development, :test do
  gem "debug", platforms: %i[ mri windows ]
end

group :development do
  gem 'capistrano', '~> 3.11'
  gem 'capistrano-rails', '~> 1.4'
  gem 'capistrano-passenger', '~> 0.2.0'
  gem 'capistrano-rvm'
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end