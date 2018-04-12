# Member Portal

[![Build Status](https://travis-ci.org/renocollective/member-portal.svg?branch=master)](https://travis-ci.org/renocollective/member-portal) [![Dependency Status](https://gemnasium.com/badges/github.com/renocollective/member-portal.svg)](https://gemnasium.com/github.com/renocollective/member-portal) [![Maintainability](https://api.codeclimate.com/v1/badges/d9cc45b50be4caa86a17/maintainability)](https://codeclimate.com/github/renocollective/member-portal/maintainability) [![Test Coverage](https://api.codeclimate.com/v1/badges/d9cc45b50be4caa86a17/test_coverage)](https://codeclimate.com/github/renocollective/member-portal/test_coverage)

The Member Portal is an open source community software project built by and for the Reno Collective. This application will provide the members of the Reno Collective with a way to better network and share ideas with one another.

## Heroku Deploy
:warning: Work in progress!

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)


## Getting Started

These instructions will help you get the project up and running on your local machine.

## Built With
* [Ruby on Rails](https://github.com/rails/rails)
* [PostgreSQL](http://www.postgresql.org/)

## Development Setup

Make sure that you already have Xcode on your machine before running the following commands. To install xcode run:
```shell
xcode-select --install
```
An install window will appear. Click install to begin installing Xcode.

If rvm isn't already installed on your machine, [install rvm](https://rvm.io/rvm/install)
After installing rvm, you may need to close the terminal and open it back up in order to successfully run an rvm.

To update or install Ruby 2.3.5, run:
```shell
rvm install 2.3.5
```

To use Ruby V.2.3.5, run:
```shell
rvm use 2.3.5
```

To install Rails V5.1.4, run:
```shell
gem install rails -v 5.1.4
```

To install PostgreSQL, make sure your brew is up to date. If you don't yet have homebrew installed, install [homebrew](https://brew.sh/).

Run the following command lines:
```shell
brew doctor
```
```shell
brew update
```

If you don't have PostgreSQL installed, run:
```shell
brew install postgresql
```

The postgresql server may need to be started if it isn't already running. To start the server,
run:
```shell
pg_ctl -D /usr/local/var/postgres start && brew services start postgresql
```

Clone this git repository by running:
```shell
git clone https://github.com/renocollective/member-portal
```
Now you should have a local copy of the member-portal project.

Once cloning the member portal, switch to the project directory:
```shell
cd member-portal
```
Before you can successfully run the project, you need to install all the dependencies for the Rail application by running:
```shell
bundle install
```
To successfully run this command, you will need to have bundler installed. To install bundler:
```shell
gem install bundler
```

For the application to successfully run, you will need to create a .env.local file. Copy and paste the text in the .env file into the new .env.local file or just run:

```shell
bundle exec rake setupenv
```

Next, run:
```shell
bundle exec rails db:setup
bundle exec rails db:migrate
```

Before we start the server, we will create our first admin user. This will ask you for information for your first user account that will have admin access. You can edit this user and grant other users admin privileges once the server has started.
```shell
bundle exec rake setupadmin
```

To start and run the rails application:
```shell
rails s
```
Now you should be able to view the rails app at http://localhost:3000/

## Docker

* To run rails in docker
* ```docker-compose up``` or ```docker-compose up -d``` to not show console output.

## Contributing

Please see [CONTRIBUTING.md](https://github.com/renocollective/member-portal/blob/master/CONTRIBUTING.md) for more information on how to contribute to the project.
