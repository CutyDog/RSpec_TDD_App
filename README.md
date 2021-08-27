# README

* Ruby version
```2.7.4```

* Database creation
```rails db:create```

* How to run the test suite
```bin/rspec```

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions
```https:// ...```

# RSpec Set Up

* Terminal
```
bin/rails generate rspec:install
bundle exec spring binstub rspec
```

* Gemfile
```
group :development, :test do

  gem 'rspec-rails', '~> 3.6.0'
end

group :development do

  gem 'spring-commands-rspec'
end
```

* application.rb
```
config.generators do |g|
    g.test_framework :rspec,
    fixtures: false,
    # view_specs: false,
    helper_specs: false,
    routing_specs: false
end
```