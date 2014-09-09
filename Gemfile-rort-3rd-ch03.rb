source 'https://rubygems.org'

gem 'rails',                '4.1.5'
gem 'sass-rails',           '4.0.3'
gem 'uglifier',             '2.5.1'
gem 'coffee-rails',         '4.0.1'
gem 'jquery-rails',         '3.1.1'
gem 'turbolinks',           '2.2.2'
gem 'jbuilder',             '2.1.3'
gem 'sdoc',                 '0.4.0', group: :doc
gem 'thin',                 '1.6.2'
gem 'foundation-rails',     '5.4.3.0'

group :test, :development do
  gem 'minitest-reporters', '1.0.5'
  gem 'mini_backtrace',     '0.1.3'
  gem 'guard-minitest',     '2.3.1'

  gem 'sqlite3',            '1.3.9'
  gem 'spring',             '1.1.3'

  gem 'better_errors',      '2.0.0'
  gem 'binding_of_caller',  '0.7.2'
  gem 'hirb',               '0.7.2'
  gem 'rails-footnotes',    '>= 4.0.0', '<5' 
  gem 'sextant',            '0.2.4'
end

group :production do
  gem 'pg',                 '0.17.1'
  gem 'rails_12factor',     '0.0.2'
end
