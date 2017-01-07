# Simplefraction

Small Ruby gem for creating, manipulating and displaying fractions.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'simplefraction'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install simplefraction

## Usage

```ruby
# setting up
require 'simplefraction'
fraction = Simplefraction::Fraction.new(1, 2) 

# get value
puts fraction.to_decimal #=> 0.5
puts fraction.to_d #=> 0.5

# get individual value
fraction.num #=> 1
fraction.den #=> 2

# set individual values
fraction.num=(2)
fraction.den=(4)
fraction.to_d #=> 0.5

# display as string
fraction.display #=> "(2/4)"
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Punknoodles/simplefraction. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

