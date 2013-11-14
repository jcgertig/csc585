source 'https://rubygems.org'

gem 'rails', '3.2.13'

gem 'devise'
gem 'omniauth-google-oauth2'

gem 'decent_exposure'
gem 'turbolinks'
gem 'simple_form'

gem 'activeadmin'
gem "meta_search", '>= 1.1.0.pre'

gem 'jquery-rails'

#TODO  needed for the server
gem 'mysql'

group :production do
  # needed for heroku
  gem 'pg'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  gem 'sass-rails'
  gem 'bootstrap-sass'

  #TODO  needed for the server
  #gem 'execjs'
  #gem 'therubyracer'
end

group :development, :test do
  gem 'certified'
  gem 'better_errors'
  gem 'factory_girl_rails'
  gem 'pry-rails'
  gem 'pry-stack_explorer'
  gem 'pry-debugger'
  gem 'awesome_print'
  gem 'quiet_assets'
  gem 'rspec-rails'
  gem 'heroku'
end

group :test do
  gem 'sqlite3'
end