module SolidusKlarnaGem
  class Engine < Rails::Engine
    config.to_prepare do
      Spree::CheckoutController.prepend(SolidusKlarnaGem::CheckoutController)
    end
  end
end
