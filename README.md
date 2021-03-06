# kinoco

kinoco is a [Ruboty](https://github.com/r7kamura/ruboty) based slack bot.

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)

## Features

- garoon integration
    - [kwappa/ragoon](https://github.com/kwappa/ragoon)
- trello integration
    - [bitjourney/ruboty-trello](https://github.com/bitjourney/ruboty-trello)
- todo management
    - [kwappa/ruboty-todo](https://github.com/kwappa/ruboty-todo)

## Install

### Common

- clone [kwappa/kinoco](https://github.com/kwappa/kinoco)
- create bot integration on your slack team
- configure your [trello](https://trello.com/) API key
    - [Trello Developers](https://developers.trello.com/)
- place `.env` at root directory and set variables by [dotenv](https://github.com/bkeepers/dotenv) syntax
    - `SLACK_TOKEN`                 : your token of slack integration for lita
    - `SLACK_OWNER_ID`              : your user ID of slack
    - `GAROON_ENDPOINT`             : your garoon URL (ends with `?WSDL`)
    - `GAROON_USERNAME`             : your garoon username
    - `GAROON_PASSWORD`             : your garoon password
    - `TRELLO_DEVELOPER_PUBLIC_KEY` : your trello API key
    - `TRELLO_MEMBER_TOKEN`         : your trello API token
    - `TODO_OWNERS`                 : users who can operate `ruboty-todo`
        - join each user name by comma
        - e.g: `owner_alice,owner_bob,owner_charlie`
- also place basic parameter for [Ruboty#env]( https://github.com/r7kamura/ruboty) and [ruboty-redis](https://github.com/r7kamura/ruboty-redis)

### Mac OS X

- `bundle install`
- install and start redis
    - `brew install redis`
    - `redis-server /usr/local/etc/redis.conf`
- `bundle exec ruboty --dotenv`

### Heroku

- create your app
- add `heroku` as a remote repository of git
    - `heroku git:remote --app #{YOUR_APP}`
- install [Redis To Go](https://elements.heroku.com/addons/redistogo) to your app
    - :credit_card: required
- install and login [Heroku Toolbelt](https://toolbelt.heroku.com/)
- set environment variables to your app
    - `heroku config:set #{KEY}=#{VALUE} --app #{YOUR_APP}`
    - execute `bin/heroku_env` to set from `.env`
- deploy to heroku and run
    - `git push heroku master`
    - `heroku ps:scale bot=1`

## License

The program is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
