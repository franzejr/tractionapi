source 'https://rubygems.org'

gem 'rails', '4.2.5'

gem 'rails-api'

gem 'active_model_serializers', '~> 0.10.0.rc2'

gem 'ralexa'

# gem 'sqlite3', group: :develpment

gem 'pg'

gem 'rails_12factor', group: :production

gem 'puma'

gem 'foreman'

gem 'rubocop'

gem 'rack-cors', require: 'rack/cors'

group :development, :test do
  gem 'spring'
  gem 'fuubar'
  # RSpec
  gem 'rspec-rails'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
end

group :test do
  # Shoulda Matchers provides RSpec one-liners that test common Rails functionality.
  gem 'shoulda', '3.5.0'
  gem 'shoulda-callback-matchers', '1.1.3'
  gem 'factory_girl_rails', '4.5.0', require: false
  gem 'simplecov'
end
