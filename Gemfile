source 'https://rubygems.org'

gem 'rails', '3.2.9'
gem 'jquery-rails'
gem 'mongoid'
gem 'bson_ext'
# gem 'inherited_resources'
gem 'has_scope'
gem 'rspec-rails', :group => [:test, :development]
gem 'haml'
gem 'haml-rails'
gem 'devise'
gem 'cancan'
gem 'thin'
gem 'twitter-bootstrap-rails'
gem 'mongoid-paperclip', :require => 'mongoid_paperclip'

group :production do
  # Heroku needs to know the ruby version
  # ruby '1.9.3'
end
group :development do
  gem 'quiet_assets'
  gem 'pry'
end
group :test do
  gem 'factory_girl_rails'
  gem 'capybara'
  gem 'guard-rspec'
  gem 'rb-fsevent'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end
