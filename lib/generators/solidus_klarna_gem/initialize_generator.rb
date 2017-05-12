module SolidusKlarnaGem
    class InitializeGenerator < Rails::Generators::Base
      def add_initializer
        initializer "completion_route_setup.rb" do
          <<-INIT
# Register payment methods here. You can register several payment method with another line
# You need to register methods :yours_new_completion_route and :yours_should_redirect? for payment system
# in a Spree::Order model

# Examples:

# This configuration will call :new_completion_route and :should_redirect? on an @order object from Spree::CheckoutController
# SolidusKlarnaGem::CompletionRoute.register_path :new_completion_route, :should_redirect?

# You can pass :yours_should_redirect? method with a block and do not register it in the Spree::Order model
# SolidusKlarnaGem::CompletionRoute.register_path(:new_completion_route) do |order|
# # put :yours_should_redirect? code here.
# end
          INIT
        end
      end
  end
end
