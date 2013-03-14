# Bower

[Bower](http://twitter.github.com/bower/) integration for your ruby apps.

## Usage with Sprockets

### Rails

Add `bower` to your application's Gemfile:

```ruby
gem 'bower'
```

Rails 4 ships with an updated version of Sprockets that supports bower's `component.json` file. If you are running, Rails 3, then you need to require Sprockets [`2.2.2.backport1`](http://rubygems.org/gems/sprockets/versions/2.2.2.backport1):

```ruby
gem 'sprockets', '2.2.2.backport1'
```

The gem includes a generator that sets up your project:

    rails generate bower:install

This will install a `.bowerrc` file to your project's root directory. It will also configure bower's components to be installed to `components/` which will be automatically added to the Asset Pipeline's asset paths. Add your project's dependencies to `components/component.json` then use bower (`bower install`, etc.) as you would in any other project.

### Non-Rails Projects

While offering less capability than when used in Rails' asset pipeline, you can still use the `bower` gem in a non-Rails project. Just require the gem and append the corresponding directory to Sprocket's load path:

```ruby
require 'sprockets'
require 'bower'

environment = Sprockets::Environment.new
environment.append_path Bower.environment.directory
```

## How this gem differs from other techniques

For Rails apps, integrating bower components into `lib/assets` and/or `vendor/assets` seems like the wrong approach. Since bower can support multiple searchpaths, the need to make distinction between external dependencies and frameworks does not exist. It can all be managed in once place. Instead, this gem's setting installs components to `components/` in your project's root.

## TODO

When used with Sprockets, you still need to use a `require` directive in order to require a component's files. This seems like something that should just work.

## Contributing

Pull requests welcome: fork, make a topic branch, commit (squash when possible) *with tests* and I'll happily consider.

## Copyright

Copyright (c) 2013 Steve Agalloco. See [LICENSE](LICENSE.md) for details.
