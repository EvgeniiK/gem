module SolidusKlarnaGem
  module CheckoutController
    private

    def completion_route
      return super if invalid_payment_method?
      byebug
      #pament_method_route
      root_path
    end

    def invalid_payment_method?
      payment_type = "Spree::KlarnaCreditPayment"
      @order.payments.map(&:source_type).include?(payment_type)
    end

  end
end
