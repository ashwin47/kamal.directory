source "https://rubygems.org"

ruby "3.2.0"

gem "rails", "~> 7.1.2"
gem "propshaft", "~> 0.8.0"
gem "sqlite3", "~> 1.4"
gem "puma", ">= 6.4"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "tailwindcss-rails"
# gem "redis", ">= 4.0.1"
gem "tzinfo-data", platforms: %i[windows jruby]
gem "bootsnap", require: false

# Authentication
gem "omniauth-github", github: "omniauth/omniauth-github", branch: "master"
gem "omniauth-rails_csrf_protection", "~> 1.0"

# Error reporting
gem "sentry-ruby"
gem "sentry-rails"
gem "sentry-sidekiq"

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

gem "litestack", "~> 0.4.2"
