source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.1.4'
# Use postgresql as the database for Active Record
gem 'pg'
# Use Puma as the app server
# gem 'puma', '~> 5'
gem "passenger", ">= 5.3.2", require: "phusion_passenger/rack_handler"
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.10'
gem 'jquery-rails'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
gem 'bcrypt'
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
gem 'bootsnap'

gem 'foundation-rails', '~> 6.6.1'

gem 'autoprefixer-rails'

gem 'devise'
gem 'hirb'

# Use ActiveStorage variant
gem 'mini_magick', '~> 4.8'
gem 'image_processing'
gem "aws-sdk-s3", require: false
gem "ffmpeg"
gem 'fastimage'

# Haml
gem 'haml-rails'
gem 'html2haml'

# Webpacker
gem 'webpacker', '~> 5.x'
gem 'cocoon', '~> 1.2.10'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 3.12'
  gem 'selenium-webdriver'
  gem 'dotenv-rails', '~> 2.7.5'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.2.1'
  # Better Chrash things
  gem 'better_errors'
  gem 'binding_of_caller'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

ruby '3.0.3'
