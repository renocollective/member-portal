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

## Advanced Search with Algolia
Search for members defaults to basic search using SQL LIKE.  To use Algolia for advanced searching:

* Create an account on [Algolia](https://www.algolia.com)
* On Algolia dashboard, note your application_id and api_key
* On Algolia dashboard, create new index called Member
* In local repo, create a .env.local file and update with your Algolia credentials.  Format for this can be copied from .env
* In developer.rb environment file, change ```config.advanced_search = true```
* Restart rails
* Create new members through app or by running ```rails db:seed```