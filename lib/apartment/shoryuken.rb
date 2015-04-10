require 'apartment/shoryuken/version'
require 'shoryuken'

require 'apartment/shoryuken/middleware/client'
require 'apartment/shoryuken/middleware/server'

module Apartment
  module Shoryuken
    module Middleware

      def self.run
        ::Shoryuken.configure_client do |config|
          config.client_middleware do |chain|
            chain.add Apartment::Shoryuken::Middleware::Client
          end
        end

        ::Shoryuken.configure_server do |config|
          config.client_middleware do |chain|
            chain.add Apartment::Shoryuken::Middleware::Client
          end

          config.server_middleware do |chain|
            chain.add Apartment::Shoryuken::Middleware::Server
          end
        end
      end
    end
  end
end

require 'apartment/shoryuken/railtie' if defined?(Rails)
