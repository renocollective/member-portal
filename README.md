# Member Portal

The Member Portal is an open source community software project built by and for the Reno Collective. This application will provide the members of the Reno Collective with a way to better network and share ideas with one another.  

[![Build Status](https://travis-ci.org/renocollective/member-portal.svg?branch=master)](https://travis-ci.org/renocollective/member-portal) [![Dependency Status](https://gemnasium.com/badges/github.com/renocollective/member-portal.svg)](https://gemnasium.com/github.com/renocollective/member-portal) [![Maintainability](https://api.codeclimate.com/v1/badges/d9cc45b50be4caa86a17/maintainability)](https://codeclimate.com/github/renocollective/member-portal/maintainability) [![Test Coverage](https://api.codeclimate.com/v1/badges/d9cc45b50be4caa86a17/test_coverage)](https://codeclimate.com/github/renocollective/member-portal/test_coverage)

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

If rvm isn't already installed on your machine, [install rvm](https://rvm.io/rvm/install)

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

To install PostgreSQL, make sure your brew is up to date.
Run the following command lines:
```shell
brew doctor
```
```shell
brew update
```

Now run the following command to install PostgreSQL:
```shell
brew install postgresql
```
It might take a little while to compile and install. After compilation is done, it’ll give you some instructions to finish setting it up.

To get the project on your local machine, you should [fork](https://help.github.com/articles/fork-a-repo/) from the  [renocollective/member-portal](https://github.com/renocollective/member-portal) repository.

Once you have forked the project, clone this git repository by running:
```shell
git clone https://github.com/YOUR-USERNAME/member-portal
```
Now you should have a local copy of the member-portal project.

Before you can successfully run the project, you need install all the dependencies for the Rail application by running:
```shell
bundle install
```
To successfully run this command, you will need to have bundler installed. To install bundler:
```shell
gem install bundler
```

Next, run:
```shell
rails db:migrate
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

Please see [CONTRIBUTING.md] for more information on how to contribute to the project.

## Authors

* Josh Fleming [@joshfleming](https://github.com/joshfleming)
* Colin Loretz [@colinloretz](http://twitter.com/colinloretz)
* Sue-Ting Chene
* Nathan Digangi [@netn8](http://twitter.com/netn8)
* Lindsay Barrett [@labarrett](https://github.com/labarrett)
* Brenda Penn [@BrendaPenn](https://github.com/BrendaPenn)
* Kendall Lewis [@kendall-lewis](https://github.com/kendall-lewis)
* Veronica Cannon [@veronicacannon](https://github.com/veronicacannon)

See also the list of [contributors](https://github.com/renocollective/member-portal/graphs/contributors) who participated in this project.
