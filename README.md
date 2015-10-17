# Object#Pat

Monkey patches `Object` adding the `pat` method.
`pat` lets you chain the results of any block, allowing you to reduce temporary variable assignments.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'object_pat'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install object_pat

## Usage

```ruby
%w[foo spam quad].
  join(",").
  pat do |result|
    if result.length > 5
      :long
    else
      :short
    end
  end.pat do |type|
    case type
    when :long
      # do long stuff
    end
    when :short
      # do short stuff
    end
  end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/object_pat. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
