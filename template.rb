# Rails Application Templates
# http://technology.stitchfix.com/blog/2014/01/06/rails-app-templates/

gsub_file "Gemfile", /^gem\s+["']sqlite3["'].*$/,''

gem_group :development, :test, :production do
gem 'foundation-rails'
  gem 'bcrypt', '~> 3.1.7'
gem 'thin'
end

gem_group :development, :test do
  gem "rspec-rails"
  gem 'factory_girl_rails'
  gem 'sqlite3' 
end

gem_group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'hirb'
  gem 'rails-footnotes', '>= 4.0.0', '<5' 
end

gem_group :test do
  gem 'capybara'
  gem 'faker'
end

gem_group :production do
  gem 'rails_12factor'
  gem 'pg'
end

run "bundle install"

run "rails generate rails_footnotes:install"
run "rails generate rspec:install"
run "sudo env ARCHFLAGS='-arch x86_64' gem install pg"

insert_into_file '.gitignore', "\n/config/database.yml\n/config/secrets.yml",
  after: "/tmp\n"

git :init
git add: "."
git commit: %Q{ -m 'Initial commit' }
