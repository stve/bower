# Bower
[![Gem Version](https://badge.fury.io/rb/bower.png)][gem] [![Build Status](https://travis-ci.org/stve/bower.png?branch=master)][travis]

[Bower](http://bower.io) integration for your ruby apps.

## Usage with Sprockets

### Rails

Add `bower` to your application's Gemfile:

```ruby
gem 'bower'
```

Rails 4 ships with an updated version of Sprockets that supports bower's `bower.json` file. If you are running, Rails 3, then you need to require Sprockets [`2.2.2.backport1`](http://rubygems.org/gems/sprockets/versions/2.2.2.backport1):

```ruby
gem 'sprockets', '2.2.2.backport1'
```

The gem includes a generator that sets up your project:

    rails generate bower:install

This will install a configuration file (`.bowerrc`) in your project's root. The configuration file tells bower where to install components and where it expects `bower.json`.

```json
{
  "directory"  : "bower_components"
}

```

You can change the destination directory if you like, though putting Bower components under `app/assets/` can cause problems (see [rails/rails#7968](https://github.com/rails/rails/pull/7968)). Add your dependencies to `bower.json` or use `bower install` as you would in any other project.

### Non-Rails Projects

While offering less capability than when used in Rails' asset pipeline, you can still use the `bower` gem in a non-Rails project. Just require the gem and append the corresponding directory to Sprocket's load path:

```ruby
require 'sprockets'
require 'bower'

environment = Sprockets::Environment.new
environment.append_path Bower.environment.directory
```

### Additional Tutorials

* [Using Rails+Bower on Heroku](https://gist.github.com/afeld/5704079/)

## How this gem differs from other techniques

For Rails apps, integrating bower components into `lib/assets` and/or `vendor/assets` seems like the wrong approach. Since bower can support multiple searchpaths, the need to make a distinction between external dependencies and frameworks does not exist. It can all be managed in once place. This gem takes a more opinionated approach and installs components to `bower_components/` in your project's root by default. You can always change it to another location.

If this approach isn't to your liking, you may want to take a look at [`bower-rails`](https://github.com/rharriso/bower-rails/).

## TODO

When used with Sprockets, you still need to use a `require` directive in order to require a component's files. This seems like something that should just work.

## Contributing

Pull requests welcome: fork, make a topic branch, commit (squash when possible) *with tests* and I'll happily consider merging your contributions.

## Copyright

Copyright (c) 2015 Steve Agalloco. See [LICENSE](LICENSE.md) for details.

[gem]: https://rubygems.org/gems/bower
[travis]: http://travis-ci.org/stve/bower
