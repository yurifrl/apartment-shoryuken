module Apartment::Shoryuken::Middleware
  class Server
    def call(worker_class, item, queue)
      Apartment::Tenant.switch(item['apartment']) do
        yield
      end
    end
  end
end
