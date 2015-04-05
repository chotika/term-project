source 'https://rubygems.org'
gem 'bundler', '>= 1.8.4'
ruby '1.9.3'
gem 'rails', '3.2.18'
gem "auto_increment"
group :development, :test do
  gem 'sqlite3'
  gem 'debugger'
  gem 'cucumber-rails', :require => false
  gem 'cucumber-rails-training-wheels'
  gem 'database_cleaner'
  gem 'capybara'
  gem 'launchy'
  gem 'rspec-rails'
  gem 'simplecov'
end

group :production do
  gem 'pg'
end

group :test do
    gem 'mocha', '~>0.9.8', :require => false
end

group :assets do
  gem 'therubyracer'
  gem 'sass-rails'
  gem 'coffee-rails'
  gem 'uglifier'
end
source 'https://rails-assets.org' do
  gem 'rails-assets-bootstrap'
  gem 'rails-assets-angular'
  gem 'rails-assets-leaflet'
end

gem 'jquery-rails'
gem 'haml'
gem 'haml-rails'
