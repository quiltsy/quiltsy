source 'https://rubygems.org'

ruby "2.1.2"

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.1'

# Use postgresql as the database for Active Record
gem 'pg'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

# Hide all ENV variables
gem 'figaro'

# User authentication
gem 'devise'

# User invitation system
gem 'devise_invitable'

# Make those console db queries look sexy
gem 'hirb'

# Image uploader
gem 'carrierwave'

# To allow s3 uploading
gem 'fog', "~> 1.3.1"

# To allow sorting
gem 'acts_as_list'

# Create pretty urls with title
gem 'friendly_id', '~> 5.0.0'

# For searching the models
gem 'pg_search'

# For search pagination
gem 'will_paginate'

group :development do
  # Better error pages for debugging
  gem 'better_errors'

  # Adds console support for better errors
  gem 'binding_of_caller'
end

group :development, :test do
  # Our testing library for ruby (lol :)
  gem 'rspec-rails'

  # Our testing library for javascript
  gem 'jasmine-rails'
end

group :test do
  gem "factory_girl_rails"
  gem "capybara"
  gem "guard-rspec"
end

group :production do
  # Use for static asset serving and logging on heroku
  gem 'rails_12factor'
  gem 'unicorn'
end

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end
