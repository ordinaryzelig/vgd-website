source 'http://rubygems.org'

gem 'rails', '3.1.3'

gem 'haml-rails'
gem 'jquery-rails'
gem 'rack-canonical-host'

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
  gem 'sqlite3'
end
