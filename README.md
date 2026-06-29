# Phlex::Rails::Scaffold

Phlex::Rails::Scaffold is a Rails generator that produces Phlex view classes instead of the default ERB templates. It automates the creation of Phlex components for scaffolded resources, following Phlex::Rails conventions for view organization.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'phlex-rails-scaffold'
```

And then execute:

```bash
bundle install
```

Or install it yourself as:

```bash
gem install phlex-rails-scaffold
```

## Usage

Once installed, the gem automatically configures Rails to use Phlex as the template engine for scaffolds. When you run a scaffold generator:

```bash
rails generate scaffold Post title:string content:text
```

It will generate Phlex views in `app/views/posts/`:

- `app/views/posts/index.html.rb`
- `app/views/posts/show.html.rb`
- `app/views/posts/new.html.rb`
- `app/views/posts/edit.html.rb`
- `app/views/posts/_form.html.rb`

These views are Phlex classes that you can further customize.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/fagnerpereira/phlex-rails-scaffold.
