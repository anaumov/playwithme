source 'http://rubygems.org'

gem 'rails', '~> 4.0.0'
#gem 'rails',     github: 'rails/rails'
#gem 'arel',      github: 'rails/arel'
# gem 'activerecord-deprecated_finders', github: 'rails/activerecord-deprecated_finders'

gem 'grape', github: 'intridea/grape'
gem 'grape-cors', github: 'cambridge-healthcare/grape-cors'
gem 'grape-swagger-rails'
#gem 'grape-entity'

# Use postgresql as the database for ActiveRecord
gem 'pg'
gem 'pg_array_parser'

gem 'settingslogic'

gem 'activeadmin', github: 'gregbell/active_admin'

# Авторизация и аутентификация
gem 'authority'
# gem 'rolify'
gem 'devise'

# Модели, value object и form objects
# gem 'phony_rails', :git => 'git://github.com/joost/phony_rails.git'
gem 'active_attr'
gem 'validates'
gem 'hashie'
# берется последняя версия для совместимости с rails 4
gem 'state_machine', :git => 'git://github.com/pluginaweek/state_machine.git'
# gem 'simple_enum'
# gem 'enumerize'

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Управление версиями проекта
gem 'semver2'

# Авторизация
# gem 'switch_user'

# Почта
gem 'recipient_interceptor'

gem 'mini_magick'
gem 'carrierwave'

# Контроллеры
#gem 'has_scope'
gem 'inherited_resources'

# Используется для сидирования обьектов
#gem 'forgery'
#gem 'ffaker'


# Вьюхи и презентеры
gem 'active_link_to'

#gem 'draper'
#gem 'cells'
#gem 'breadcrumbs_on_rails'
#gem 'tabulous'
# gem 'authbuttons-rails'

gem 'simple-navigation', :git => 'git://github.com/andi/simple-navigation.git'
gem 'simple-navigation-bootstrap'

gem 'simple_form', :git => 'git://github.com/plataformatec/simple_form.git'

#gem 'nested_form'
#gem 'cocoon'

gem 'kaminari'
gem 'kaminari-bootstrap'

# Use jquery as the JavaScript library
gem 'jquery-rails'
gem 'jquery-turbolinks'
gem 'role-rails'

#gem 'nilify_blanks', :git => 'git://github.com/rubiety/nilify_blanks.git'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
gem 'haml-rails'

# Очередь
#gem 'redis-namespace'
#gem 'resque'
#gem 'resque-pool'
#gem 'resque-status'

# gem 'ruby-progressbar'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.0.1'

#gem 'airbrake_user_attributes'
gem 'airbrake', :github => 'airbrake/airbrake'

gem 'bootstrap-sass', '~> 3.0.2.0'
gem 'compass'
gem 'compass-rails'

#assets
# Use edge version of sprockets-rails
gem 'sprockets-rails', github: 'rails/sprockets-rails'

# Use SCSS for stylesheets
gem 'sass-rails'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '~> 1.3'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', github: 'rails/coffee-rails'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby


# Хорошая альтернатива jquery-ui-rails
#  gem 'jquery-ui-sass-rails'
# gem 'jquery_datepicker'

# gem 'select2-rails'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :development do
  # gem 'rubocop'
  gem 'ruby-graphviz'
  gem 'rails-erd'
  #gem 'ruby-prof'
  #gem 'rspec-prof'
  # HolePicker is a Ruby gem for quickly checking all your Gemfile.lock files for gem versions with known vulnerabilities.
  gem 'holepicker', :require => false

  # Альтернативный https://github.com/dsci/vendorer-rails
  #gem 'vendorer'
  # используем bower вместо vendorer

  gem 'awesome_print'

  # Не могу подключить из-за того что debugger не компилится
  # для ruby 2.0.0-rc2
  # gem 'pry-full'

  gem 'bond'
  gem 'jist'
  gem 'pry-rails'

  gem 'pry-pretty-numeric'
  gem 'pry-syntax-hacks'
  gem 'pry-highlight'
  gem 'pry-git'
  gem 'pry-developer_tools'

  gem 'pry-remote'

  gem 'rspec-console'

  # step, next, finish, continue, break
  gem 'pry-nav'
  gem 'pry-doc'
  gem 'pry-docmore'

  # Добавляет show-stack
  gem "pry-stack_explorer"

  # rake и generator комманды в консоли
  gem 'commands'

  gem "hpricot", ">= 0.8.6"
  gem "ruby_parser", ">= 2.3.1"

  gem "binding_of_caller"

  # Поддержка для rails_panel в chrome
  gem 'meta_request'

  # Молчаливые ассеты
  gem 'quiet_assets'

  # Пока не нужны
  #gem 'ruby-graphviz'
  gem "mailcatcher", :require => false
  gem 'foreman'

  gem "guard-livereload"
end

group :test, :development do
  gem 'factory_girl_rails'
  gem 'rb-inotify', '~> 0.9', :require => false
  gem "rspec-rails", ">= 2.11.0"
  if RUBY_PLATFORM =~ /darwin/
    gem 'rb-fsevent', '~> 0.9.1', require: false
    gem 'ruby_gntp'
  end
end


group :test do
  gem 'rspec-prof'

  # Start Pry in the context of a failed test
  #gem 'plymouth'
  gem "fakeredis", :require => "fakeredis/rspec"
  gem 'resque_spec'
  gem "email_spec", ">= 1.2.1"
  gem "cucumber-rails", ">= 1.3.0", :require => false
  gem 'guard', '>= 2.4.0'

  #gem 'debugger' unless `whoami`=~/jenkins/
  gem 'guard-spork'
  gem 'guard-rspec'
  gem 'guard-rails'
  gem 'guard-cucumber'
  gem 'guard-ctags-bundler'

  gem 'simplecov', :require => false
  gem 'simplecov-rcov', :require => false

  gem "database_cleaner"
  gem "capybara"
  gem 'capybara-screenshot'
  gem 'poltergeist'

  gem "launchy", ">= 2.1.2"
  gem 'turn', :require => false
  #gem "test_active_admin", :git => "git://github.com/BrandyMint/test_active_admin.git"
end

group :deploy do
  gem 'capistrano', '~> 3.1', :require => false
  gem 'capistrano-rbenv', '~> 2.0',  :require => false
  gem 'capistrano-rails', '~> 1.1', :require => false
  gem 'capistrano-bundler', :require => false
end

group :production do
  gem 'unicorn'
end
