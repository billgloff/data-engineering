# LivingSocial Challenge for Software Engineer - Big Data

---

This application requires:

-   Ruby 2.1.1 (rvm install ruby-2.1.1)
-   Rails 4.0.4
-   SQLite 3 (brew install sqlite3)
-   Bundler Gem (gem install bundler)


Before running the tests or the app, please run the following commands:

	$ gem install bundler
    $ bundle install
    $ bundle exec rake db:create db:migrate db:test:prepare

    
To run the test suite:
    
    $ bundle exec rake


To run the Rails app:
    
    $ bundle exec rails s
    $ open http://localhost:3000
