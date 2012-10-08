# Active Tracker

## Does it work?

Nope! Not yet.

## What is it?

Active Tracker is an extraction from [Craft Coffee](http://www.craftcoffee.com).

## Installation

Add this line to your application's Gemfile:

    gem 'active_tracker'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install active_tracker

## Usage

In your Rails config/initializers directory, add a file that looks something like
the following:

```ruby
  ActiveTracker.configure do |config|
    config.providers = [
      :kissmetrics => {:api_key => MY_KISSMETRICS_API_KEY},
      :mixpanel => {:api_key => MY_MIXPANEL_API_KEY
    ]
  end
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
