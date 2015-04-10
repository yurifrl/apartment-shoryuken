# Apartment::Shoryuken

Official Support for Shoryuken with the Apartment Gem.

This gem takes care of storing the current tenant that a job is enqueued within.
It will then switch to that tenant for the duration of the job processing.

## Installation

Add this line to your application's Gemfile:

    gem 'apartment-shoryuken'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install apartment-shoryuken

## Usage

That's it. There's nothing to do. Each job that is queued will get an additional entry
storing `Apartment::Tenant.current` when it is queued. Then when the server pops it,
it will run job within an `Apartment::Tenant.switch` block.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/influitive/apartment-shoryuken/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

