# Active Tracker

## Does it work?

Nope! Not yet.

## What is it?

Active Tracker is an extraction from [Craft Coffee](http://www.craftcoffee.com).

Active Tracker is a unified API for any number of event tracking library/service you use.
Libraries including:
* Google Analytics
* Kissmetrics
* Mixpanel
* Datadog
* ..and others

One call to ActiveTracker.track will queue a POST request to be sent to all the 
event tracking providers you've included in your application. POSTs are sent
asynchronously using EventMachine.

```ruby

  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        ActiveTracker.track(:event => 'user_created', {:user => @user})

        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render json: @user, status: :created, location: @user }
      end
    end
  end
```

ActiveTracker also takes care of including any front-end javascripts required by
your library.

For example, in your application's HEAD:

```ruby
<%= include_active_tracker_js %>
```

...includes all the javascripts required by your event providers.

Send a post to all your event tracking libraries in Javascript with:

```javascript
   EventTracker.track({event: 'user_clicked_button'});
```

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

## Credits

![http://i.imgur.com/Jd7pg.jpg](http://i.imgur.com/Jd7pg.jpg)

Active Tracker is built by [Craft Coffee](http://craftcoffee.com)
