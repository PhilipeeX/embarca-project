# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.0'

gem 'bootsnap', '>= 1.1.0', require: false
gem 'jbuilder', '~> 2.5'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'
gem 'rails', '~> 5.2.8'
gem 'sass-rails', '~> 5.0'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'dotenv', '~> 2.8', '>= 2.8.1'
  gem 'rubocop', '~> 1.58'
  gem 'rubocop-capybara', '~> 2.20'
  gem 'rubocop-rspec', '~> 2.26', '>= 2.26.1'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'database_cleaner'
  gem 'factory_bot', '~> 5.2'
  gem 'rails-controller-testing', '~> 0.0.3'
  gem 'rspec', '~> 3.12'
  gem 'rspec-rails', '~> 4.1.0'
  gem 'selenium-webdriver', '~> 4.0', '>= 4.0.3'
  gem 'shoulda-matchers', '~> 5.3'
  gem 'webdrivers', '~> 5.3', '>= 5.3.1'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
