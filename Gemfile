source 'https://rubygems.org'

gem 'rails', '3.2.12'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'pg'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'

  gem 'bootstrap-sass'
  gem 'cancan'
  gem 'russian', '~> 0.6.0'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
gem 'debugger', group: [:development, :test]

# gem 'will_paginate', '~> 3.0.0'
gem 'will_paginate-bootstrap'
gem 'simple_form'

group :development, :test do
  gem 'rspec-rails'
  gem 'factory_girl_rails'
end

group :test do
	gem 'database_cleaner'
  gem 'faker'
  gem 'capybara'
  gem 'guard-rspec'
  gem 'launchy'
end

gem 'bootstrap-datetimepicker-rails'
# gem 'jwplayer-rails'
# gem "mediaelement_rails"
# gem 'ledermann-rails-settings', :require => 'rails-settings'
gem 'rails_config'

group :production do
  gem 'unicorn', '~> 3.6.2', :require => nil
end

group :development do
  gem 'capistrano-deploy', '~> 0.1.1', :require => nil
end
