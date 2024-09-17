
### [ARTICLE:Iterate Fast – How You Can Have Fewer Bugs By Using Rspec TDD In Ruby On Rails 6](https://deanin.com/blog/rspec-rails/#google_vignette)

### [YOUTUBE:RSpec TDD - How To Unit Test Ruby On Rails 6 Apps For Absolute Beginners](https://www.youtube.com/watch?v=AAqPc0j_2bg&t=121s)

[TOC]

## CONTENTS
- ### [rspec: cheatsheet](#cheatsheet)
- ### [app framework](#appframework)
- #### [webpacker](#webpack)
- ### [gem init](#geminit)
- ### [railsbytes](#railsbytes-template)
- ### [devise](#devise-gem)
- ### [minimal app](#minimalapp)

## CHEATSHEET
### env
```
/bin/zsh --login && rvm use --default 3.2.2

```

### rspec
```

rspec --init      # sets up a base skeleton for RSpec testing in the current app

rspec   # run ALL spec files

rspec spec --format documentation     # run ALL tests with DETAIL of both SUCCESS & FAILURE

rspec spec/models/post_spec.rb --format documentation 

rspec spec/views/posts/index.html.erb_spec.rb --format documentation 

rspec spec/card_spec.rb   #  isolate SPECIFIC test

./spec/card_spec.rb:3   # run spec file from example with LINE NUMBER = 3

```
### git
```
export H_BRANCH='rspec-2'
echo ${H_BRANCH}
git push -d origin ${H_BRANCH}   # Delete remote
git branch -d ${H_BRANCH}               # Delete local

```
---

## AppFramework
```
gem install rails -v 6.1.7.7

# [railsbytes: rails templates](https://railsbytes.com/)
APP_NAME=rspec-deanin-app-0
RAILS_BUILD_VERSION=6.1.7.7

rails _${RAILS_BUILD_VERSION}_ new ${APP_NAME} -t

cd ${APP_NAME}
```


## webpack
```
https://yarnpkg.com/lang/en/docs/install/

npm install --global yarn

rails webpacker:install

```

## GemInit
```
vi Gemfile
--
gem 'devise'

group :development do
  gem 'rspec-rails'
  ...
--
bundle install

```

## railsbytes-template
### https://railsbytes.com/public/templates/z0gsLX
#
```
rails app:template LOCATION="https://railsbytes.com/script/z0gsLX"
---
# remove 'test' directory: y
```

## devise-gem
```

rails g devise:install
rails g devise User   # create devise Users

# IF NEEDED
# rails db:rollback

rails db:migrate RAILS_ENV=test

rspec spec --format documentation

```

## MinimalApp
```
rails g scaffold posts title:string body:text user:references views:integer

vi db/migrate/*_create_posts
--
      t.integer :views, default: 0

--
rails db:migrate RAILS_ENV=test

rspec spec --format documentation

rails db:migrate RAILS_ENV=development

rails s

```

