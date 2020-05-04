# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.2'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 4.3'
# Use SCSS for stylesheets
gem 'sass-rails'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false

gem 'active_decorator'
gem 'kaminari'
gem 'rails-i18n', '~> 6.0'
gem 'seed-fu', github: 'jmkim/seed-fu', branch: 'support-rails-6'
gem 'slim-rails'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]

  # pry debug
  gem 'pry-byebug'
  gem 'pry-doc'
  gem 'pry-rails'
  gem 'pry-stack_explorer'

  gem 'bullet'
end

group :development do
  gem 'listen'
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'spring-watcher-listen'

  # better_errors
  gem 'better_errors'
  gem 'binding_of_caller'

  # ruby debugger
  gem 'debase'
  gem 'ruby-debug-ide'

  # Guard
  gem 'guard-rspec', require: false
  gem 'guard-rubocop', require: false

  gem 'brakeman', require: false
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'

  # Cov
  gem 'codecov', require: false
  gem 'simplecov', require: false

  # RSpec
  gem 'factory_bot_rails'
  gem 'json_spec'
  gem 'rails-controller-testing'
  gem 'rspec-rails'

  # lint
  gem 'rubocop-rails', require: false
  gem 'slim_lint', require: false
end

# This line is require until a new version with irb#79(https://github.com/ruby/irb/pull/79) is release
gem 'irb', '1.2.4'
