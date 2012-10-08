require 'active_tracker/configuration'
require 'active_tracker/provider'
require 'active_tracker/providers'
require 'active_tracker/rails'
require 'erb'

module ActiveTracker
  VERSION = "0.0.1"

  class << self
    attr_writer :configuration

    def configure
      yield(configuration)
    end

    def configuration
      @configuration ||= Configuration.new
    end
  end
end
