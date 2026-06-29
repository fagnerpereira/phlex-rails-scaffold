# Phlex::Rails::Scaffold

Phlex::Rails::Scaffold is a Ruby gem that intercepts Rails scaffold generators to output Phlex view classes and controllers that explicitly render them.

## Installation

Install the gem and add to the application's Gemfile by executing:

```bash
bundle add phlex-rails-scaffold
```

If bundler is not being used to manage dependencies, install the gem by executing:

```bash
gem install phlex-rails-scaffold
```

## Usage

This gem automatically configures Rails generators to use Phlex for scaffolds. When you run a standard scaffold command:

```bash
bin/rails generate scaffold Post title:string content:text
```

It will generate Phlex view classes in `app/views/posts/` and a controller that renders them.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/fagnerpereira/phlex-rails-scaffold.
