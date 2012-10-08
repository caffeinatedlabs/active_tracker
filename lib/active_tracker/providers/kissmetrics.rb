module ActiveTracker
  class Kissmetrics < Provider
    attr_accessor :api_key
    
    def initialize(options = {})
      @api_key = options[:api_key]
    end
  end
end