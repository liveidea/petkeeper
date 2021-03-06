source 'https://rubygems.org'

ruby '2.2.3'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.4'
# Use mysql as the database for Active Record
gem 'mysql2', '~> 0.3.18'


# Use Bootstrap
gem 'bootstrap-sass', '~> 3.3.6'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Autoprefixer for stylesheets
gem 'autoprefixer-rails'
# Use HAML for views
gem 'haml'
gem 'cloudinary'
gem 'haml-rails', '~> 0.9'
# A simple, ORM agnostic, Ruby 1.9 compatible date validator for Rails 3
gem 'date_validator', '~> 0.9.0'
# This gem provides a simple and extremely flexible way to upload files from Ruby applications
gem 'carrierwave'
gem 'mini_magick'
# Integrate Matias Meno's Dropzone awesome file upload JS library right into the Asset pipeline of your Rails apps.
gem 'dropzonejs-rails'
# Font-awesome-rails provides the Font-Awesome web fonts and stylesheets as a Rails engine for use with the asset pipeline.
gem 'font-awesome-rails'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# Jquery inputmask rails
gem 'jquery-inputmask-rails'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
gem 'devise'
# Use Bootstrap for devise views
gem 'devise-bootstrap-views'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc
# The twilio-ruby helper library lets you write Ruby code to make HTTP requests to the Twilio API.
gem 'twilio-ruby'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  # Call 'binding.pry' anywhere in the code to stop execution and get a debugger console
  gem 'pry'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end


group :development, :test do
  gem 'rspec-rails', '~> 3.0'
end

group :test do
  gem 'capybara'
  gem 'factory_girl_rails', '~> 4.0'
end

group :production do
  gem 'pg'
end
gem 'rails_12factor', group: :production
