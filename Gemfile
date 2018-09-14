
source 'https://rubygems.org'
git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end
ruby '2.5.1'
gem 'bootstrap', '~> 4.1', '>= 4.1.3'
gem 'devise', '~> 4.4', '>= 4.4.3'
gem 'material_icons'
gem 'pg', '~> 1.1', '>= 1.1.3'
gem 'rails', '~> 5.2', '>= 5.2.1'
gem 'tinymce-rails'
gem 'will_paginate', '~> 3.0'
gem 'will_paginate-bootstrap4'
gem 'mini_racer'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
# Use sqlite3 as the database for Active Record
# gem 'sqlite3'
# Use Puma as the app server
gem 'puma', '~> 3.12'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0', '>= 5.0.7'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '~> 4.1', '>= 4.1.19'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
# gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5.2'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
gem 'jquery-rails'
gem 'rails-ujs'
gem 'simple_form', '~> 4.0', '>= 4.0.1'

group :development, :test do
  gem 'faker', git: 'https://github.com/stympy/faker.git', branch: 'master'
end

group :development do
  # Designed to help you increase your application's performance
  # by reducing the number of queries it makes
  gem 'bullet'
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  # gem 'listen', '>= 3.0.5', '< 3.2'
  # gem 'web-console', '>= 3.3.0'
  # Spring speeds up development by keeping your application running in the background.
  # Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0', '>= 2.0.1'
  # Better Errors replaces the standard Rails error page with a much better and more useful error page.
  gem 'better_errors', git: 'https://github.com/charliesome/better_errors.git', branch: 'master'
  # Optional, but is necessary to use Better Errors' advanced features (REPL, local/instance variable inspection, pretty stack frame names).
  gem 'binding_of_caller'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
# gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
