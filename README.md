# FbsimctlRb

Light wrapper for https://github.com/facebook/FBSimulatorControl/tree/master/fbsimctl .

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'fbsimctl_rb'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install fbsimctl_rb

## Usage

```
require 'fbsimctrl_rb'
fbsimctrl = FbsimctlRb::Cmd.new
fbsimctrl.list      # Works with method_missing
fbsimctrl.shutdown  # Works with method_missing
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/KazuCocoa/fbsimctl_rb.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

