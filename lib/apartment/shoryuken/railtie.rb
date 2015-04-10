module Apartment::Shoryuken
  class Railtie < Rails::Railtie
    initializer "apartment.shoryuken" do
      Apartment::Shoryuken::Middleware.run
    end
  end
end
