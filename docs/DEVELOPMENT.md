# Developing Member Portal


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
