module Apartment::Shoryuken::Middleware
  class Server
    def call(worker_instance, queue, sqs_msg, body)
      Apartment::Tenant.switch!(body['apartment'])
    end
  end
end
