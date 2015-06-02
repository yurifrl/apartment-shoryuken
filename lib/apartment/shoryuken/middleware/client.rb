module Apartment::Shoryuken::Middleware
  class Client
    def call(options)
    	options[:message_body]["apartment"] = Apartment::Tenant.current
      yield
    end
  end
end