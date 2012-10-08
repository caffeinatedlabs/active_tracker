module ActiveTracker
  class Configuration
    OPTIONS = [:providers, :api_keys]

    # an array of the providers you're using. includes api keys.
    # [:kissmetrics => {:api_key => 'Blah'}, ..]
    attr_writer :providers
    attr_accessor :provider_objects

    def providers
      #TODO: very brittle, maybe need a struct here
      @provider_objects ||= @providers.map do |provider|
        klass = eval('ActiveTracker::' + provider.keys.first.to_s.capitalize)
        binding.pry
        klass.new(provider.values.first)
      end
    end
  end
end