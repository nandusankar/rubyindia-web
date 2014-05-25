Readme
----

Website for [rubyindia.org](http://www.rubyindia.org/).

For featuring you're article/ content/ project, create an issue with a link to it, or contact us @ contact [at] rubyindia [dot] org

### Setting up development machine

``` ruby
bundle install
rake setup
bundle exec rails server
```

Start server and login with following credentials from 127.0.0.1:3000/login

```
email: john@example.com
password: welcome
```

### Running tests

``` ruby
# to execute all tests
rake 

# to execute tests in models
rake test:models

# to execute tests in controllers
rake test:controllers

# running an individual test file
rake test test/models/comment_test.rb
```

### Contributing

* Fork it
* Create your feature branch (git checkout -b my-new-feature)
* Commit your changes (git commit -am 'Add some feature')
* Push to the branch (git push origin my-new-feature)
* Create new Pull Request
