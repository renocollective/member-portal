# Developing Member Portal

## EditorConfig

> [EditorConfig](http://editorconfig.org) helps developers define and maintain consistent coding styles between different editors and IDEs.

This project uses EditorConfig to maintain consistency. It is encouraged that all project participants enable EditorConfig support in their preferred editor. Support exists for most major editors today. Plugins for the most popular editors include:

* [Sublime Text](https://github.com/sindresorhus/editorconfig-sublime#readme)
* [Atom](https://github.com/sindresorhus/atom-editorconfig#readme)
* VS Code - _As of 2017 rc1 Visual Studio ships with `.editorconfig` support baked in_

Plugins and support for many other editors can be found in the _[Download a Plugin](http://editorconfig.org/#download)_ section of the EditorConfig website.

## Rubocop, Guard and Your Editor

This project is using **rubocop** to help enforce consistency with the Ruby Style guide.

### Rubocop

After running `bundle install` in the project root, you can run rubocop with the command:

```
rubocop
```

### Rubocop + Guard
[Guard](https://github.com/guard/guard) is also setup to work with Rubocop so that it will watch any files for edits and check them against Rubocop.

```
bundle exec guard
```

### Your Editor
Many editors also have plugins for running Rubocop and helping you to stay within the community style guide. See below for installation instructions for your favorite editor.

* [Atom](https://atom.io/packages/linter-rubocop)
* [Sublime Text](https://github.com/SublimeLinter/SublimeLinter-rubocop)
* [VS Code](https://github.com/misogi/vscode-ruby-rubocop)

## Environment Variables
[dotenv](https://github.com/bkeepers/dotenv) makes it easier to store configuration details
such as database URL or API key.  Each environment (e.g. development, test) has a .env file to hold environment specific info outside of the repo.  You'll need to copy the .env file and make .env.local and .env.local.test files and swap the insecure placeholders.  For example, .env.local needs the local database url.

```
DATABASE_URL=postgresql://localhost/member_portal_development
```

## Advanced Search with Algolia

Search for members defaults to basic search using SQL LIKE.  To use Algolia for advanced searching:

* Create an account on [Algolia](https://www.algolia.com)
* On Algolia dashboard, note your application_id and api_key
* In local repo, create a .env.local file and update with your Algolia credentials.  Format for this can be copied from .env
* In developer.rb environment file, change `config.algolia_search = true`
* Restart rails
* New members will be added to the Algolia index.
* Existing members can be added to Algolia index as well.  See [Rails Algolia Search Gem](https://github.com/algolia/algoliasearch-rails) for details.
