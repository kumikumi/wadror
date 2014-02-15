source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.2'

# Use sqlite3 as the database for Active Record
# ohjeessa kaskettiin poistamaan
# gem 'sqlite3'

#ja lisaamaan tilalle 

group :development, :test do
  gem 'sqlite3'
end

group :production do
   gem 'pg'
   gem 'rails_12factor' 
end

# loppu

#ohjeessa (vko 2) käskettiin lisäämään
gem 'byebug', group: [:development, :test]
#loppu

#ohjeessa (vko 3) käskettiin lisäämään
gem 'bcrypt-ruby', '~> 3.1.2'
#loppu

#ohjeessa (vko 4) käskettiin lisäämään
group :test do
  gem 'rspec-rails', '~> 2.14.1'
end
#loppu

#ja tämä (vko 4)
group :test do
  gem 'factory_girl_rails'
  gem 'capybara'
  gem 'launchy'
  gem 'simplecov', require: false
  #ja tämä (vko 5)
  gem 'webmock'
  #loppu
end
#loppu

#ohjeessa (vko 5) käskettiin lisäämään
gem 'httparty'
gem "rails-settings-cached", "0.3.1"
#loppu

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
