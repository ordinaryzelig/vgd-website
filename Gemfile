source 'http://rubygems.org'

gem 'rails', '3.1.3'

gem 'haml-rails', '0.3.4'
gem 'jquery-rails', '1.0.19'
gem 'rack-canonical-host', '0.0.3'

group :assets do
  gem 'coffee-rails', '~> 3.1.1'
  gem 'compass-rails', '1.0.0.rc.3'
  gem 'sass-rails', '~> 3.1.5'
  gem 'uglifier', '>= 1.0.3'
end

group :production do
  gem 'pg'
  gem 'thin'
end

group :development do
  gem 'heroku'
end

group :development, :test do
  gem 'sqlite3', '1.3.5'
  gem 'spork', '0.9.0'
end

group :test do
  gem 'capybara', '1.1.2'
  gem 'rspec-rails', '2.8.1'
end
