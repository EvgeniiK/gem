module SolidusKlarnaGem
  module Generators
    class ConfigGenerator < Rails::Generators::Base

      def add_initializer
        initializer "completion_route_setup.rb" do
          <<-INIT
# Register payment methods here. You can register several payment method with another line

# Examples:

# This configuration will always redirect on comletion step of purchaise to a :new_completion_route
# SolidusKlarnaGem::CompletionRoute.config :new_completion_route, :should_redirect?

# It can handle a block. In a block you can use an @order variable from Spree::CheckoutController
# SolidusKlarnaGem::CompletionRoute.config(:new_completion_route) do |order|
# # put redirection check code here. It must return `true` or `false`
# end
          INIT
        end
      end
    end
  end
end
