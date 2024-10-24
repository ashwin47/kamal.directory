source "https://rubygems.org"

ruby "3.3.0"

gem "rails", "~> 8.0.0.rc1"
gem "propshaft", "~> 0.8.0"
gem "sqlite3", "~> 2.1"
gem "puma", ">= 6.4"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "tailwindcss-rails"
gem "tzinfo-data", platforms: %i[windows jruby]
gem "bootsnap", require: false

# Authentication
gem "omniauth-github", github: "omniauth/omniauth-github", branch: "master"
gem "omniauth-rails_csrf_protection", "~> 1.0"
gem "rack", "~> 2.2.8"

# Error reporting
gem "sentry-ruby"
gem "sentry-rails"

# Info
gem "gems"

group :development, :test do
  gem "debug", platforms: %i[mri windows]
  gem "byebug", "~> 11.1"
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console"
  gem "hotwire-livereload"

  # Highlight the fine-grained location where an error occurred [https://github.com/ruby/error_highlight]
  gem "error_highlight", ">= 0.4.0", platforms: [:ruby]
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara"
  gem "selenium-webdriver"
end

gem "dockerfile-rails", ">= 1.6", group: :development
