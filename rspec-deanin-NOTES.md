
# [RSpec TDD - How To Unit Test Ruby On Rails 6 Apps For Absolute Beginners | 20in20 - Week 14](https://www.youtube.com/watch?v=AAqPc0j_2bg&t=121s)

/bin/zsh --login && rvm use --default 3.2.2

rspec --init      # sets up a base skeleton for RSpec testing in the current app

rspec   # run ALL spec files

rspec spec --format documentation     # run ALL tests with DETAIL of both SUCCESS & FAILURE

rspec spec/context_spec.rb --format documentation 

rspec spec/views/posts/index.html.erb_spec.rb --format documentation 

rspec spec/card_spec.rb   #  isolate SPECIFIC test

./spec/card_spec.rb:3   # run spec file from example with LINE NUMBER = 3

